/**
 *  @file
 *  @copyright defined in eos/LICENSE
 */
#include <eosio/chain_api_plugin/chain_api_plugin.hpp>
#include <eosio/chain/exceptions.hpp>

#include <fc/io/json.hpp>

namespace eosio {

static appbase::abstract_plugin& _chain_api_plugin = app().register_plugin<chain_api_plugin>();

using namespace eosio;

class chain_api_plugin_impl {
public:
   chain_api_plugin_impl(controller& db, priv_controller& priv_db)
      : db(db)
      ,priv_db(priv_db)
      {}

   controller& db;
   priv_controller& priv_db;
};


chain_api_plugin::chain_api_plugin(){}
chain_api_plugin::~chain_api_plugin(){}

void chain_api_plugin::set_program_options(options_description&, options_description&) {}
void chain_api_plugin::plugin_initialize(const variables_map&) {}

struct async_result_visitor : public fc::visitor<std::string> {
   template<typename T>
   std::string operator()(const T& v) const {
      return fc::json::to_string(v);
   }
};

#define CALL(api_name, api_handle, api_namespace, call_name, http_response_code) \
{std::string("/v1/" #api_name "/" #call_name), \
   [api_handle](string, string body, url_response_callback cb) mutable { \
          api_handle.validate(); \
          try { \
             if (body.empty()) body = "{}"; \
             auto result = api_handle.call_name(fc::json::from_string(body).as<api_namespace::call_name ## _params>()); \
             cb(http_response_code, fc::json::to_string(result)); \
          } catch (...) { \
             http_plugin::handle_exception(#api_name, #call_name, body, cb); \
          } \
       }}

#define CALL_ASYNC(api_name, api_handle, api_namespace, call_name, call_result, http_response_code) \
{std::string("/v1/" #api_name "/" #call_name), \
   [api_handle](string, string body, url_response_callback cb) mutable { \
      if (body.empty()) body = "{}"; \
      api_handle.validate(); \
      api_handle.call_name(fc::json::from_string(body).as<api_namespace::call_name ## _params>(),\
         [cb, body](const fc::static_variant<fc::exception_ptr, call_result>& result){\
            if (result.contains<fc::exception_ptr>()) {\
               try {\
                  result.get<fc::exception_ptr>()->dynamic_rethrow_exception();\
               } catch (...) {\
                  http_plugin::handle_exception(#api_name, #call_name, body, cb);\
               }\
            } else {\
               cb(http_response_code, result.visit(async_result_visitor()));\
            }\
         });\
   }\
}

#define CHAIN_RO_CALL(call_name, http_response_code) CALL(chain, ro_api, chain_apis::read_only, call_name, http_response_code)
#define CHAIN_RW_CALL(call_name, http_response_code) CALL(chain, rw_api, chain_apis::read_write, call_name, http_response_code)
#define CHAIN_RO_CALL_ASYNC(call_name, call_result, http_response_code) CALL_ASYNC(chain, ro_api, chain_apis::read_only, call_name, call_result, http_response_code)
#define CHAIN_RW_CALL_ASYNC(call_name, call_result, http_response_code) CALL_ASYNC(chain, rw_api, chain_apis::read_write, call_name, call_result, http_response_code)

// ------------- priv -------------

#define CHAIN_RO_CALL_PR(call_name, http_response_code) CALL(priv_chain, pr_ro_api, priv_chain_apis::read_only, call_name, http_response_code)
#define CHAIN_RO_CALL_ASYNC_PR(call_name, call_result, http_response_code) CALL_ASYNC(priv_chain, pr_ro_api, priv_chain_apis::read_only, call_name, call_result, http_response_code)
#define CHAIN_RW_CALL_ASYNC_PR(call_name, call_result, http_response_code) CALL_ASYNC(priv_chain, pr_rw_api, priv_chain_apis::read_write, call_name, call_result, http_response_code)

void chain_api_plugin::plugin_startup() {
   ilog( "starting chain_api_plugin" );
   my.reset(new chain_api_plugin_impl(app().get_plugin<chain_plugin>().chain(), app().get_plugin<priv_chain_plugin>().chain()));
   auto ro_api = app().get_plugin<chain_plugin>().get_read_only_api();
   auto rw_api = app().get_plugin<chain_plugin>().get_read_write_api();

   // ------------- priv -------------
   auto pr_ro_api = app().get_plugin<priv_chain_plugin>().get_read_only_api();
   auto pr_rw_api = app().get_plugin<priv_chain_plugin>().get_read_write_api();

   auto& _http_plugin = app().get_plugin<http_plugin>();
   ro_api.set_shorten_abi_errors( !_http_plugin.verbose_errors() );
   pr_ro_api.set_shorten_abi_errors( !_http_plugin.verbose_errors() );

   _http_plugin.add_api({
      CHAIN_RO_CALL(get_info, 200l),
      CHAIN_RO_CALL(get_block, 200),
      CHAIN_RO_CALL(get_block_header_state, 200),
      CHAIN_RO_CALL(get_account, 200),
      CHAIN_RO_CALL(get_code, 200),
      CHAIN_RO_CALL(get_code_hash, 200),
      CHAIN_RO_CALL(get_abi, 200),
      CHAIN_RO_CALL(get_raw_code_and_abi, 200),
      CHAIN_RO_CALL(get_raw_abi, 200),
      CHAIN_RO_CALL(get_table_rows, 200),
      CHAIN_RO_CALL(get_table_by_scope, 200),
      CHAIN_RO_CALL(get_currency_balance, 200),
      CHAIN_RO_CALL(get_currency_stats, 200),
      CHAIN_RO_CALL(get_producers, 200),
      CHAIN_RO_CALL(get_producer_schedule, 200),
      CHAIN_RO_CALL(get_scheduled_transactions, 200),
      CHAIN_RO_CALL(abi_json_to_bin, 200),
      CHAIN_RO_CALL(abi_bin_to_json, 200),
      CHAIN_RO_CALL(get_required_keys, 200),
      CHAIN_RO_CALL(get_transaction_id, 200),
      CHAIN_RW_CALL_ASYNC(push_block, chain_apis::read_write::push_block_results, 202),
      CHAIN_RW_CALL_ASYNC(push_transaction, chain_apis::read_write::push_transaction_results, 202),
      CHAIN_RW_CALL_ASYNC(push_transactions, chain_apis::read_write::push_transactions_results, 202),
      
      
      // ------------- priv -------------

      CHAIN_RO_CALL_PR(get_block, 200),
      CHAIN_RO_CALL_PR(get_info, 200),
      CHAIN_RO_CALL_PR(get_block_header_state, 200),
      CHAIN_RO_CALL_PR(get_code, 200),
      CHAIN_RO_CALL_PR(get_account, 200),
      CHAIN_RO_CALL_PR(get_raw_code_and_abi, 200),
      CHAIN_RO_CALL_PR(get_table_rows, 200),
      CHAIN_RW_CALL_ASYNC_PR(push_block, priv_chain_apis::read_write::push_block_results, 202),
      CHAIN_RW_CALL_ASYNC_PR(push_transaction, priv_chain_apis::read_write::push_transaction_results, 202),
      CHAIN_RW_CALL_ASYNC_PR(push_transactions, priv_chain_apis::read_write::push_transactions_results, 202)
   });
}

void chain_api_plugin::plugin_shutdown() {}

}
