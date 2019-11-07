/**
 *  @file
 *  @copyright defined in eos/LICENSE
 */
#pragma once
#include <eosio/chain/sss_object.hpp>
#include <appbase/application.hpp>
#include <eosio/chain_plugin/chain_plugin.hpp>
#include <eosio/net_plugin/protocol.hpp>
//#include <eosio/priv_chain_plugin/priv_chain_plugin.hpp>

namespace eosio {
   using namespace appbase;

   struct connection_status {
      string            peer;
      bool              connecting = false;
      bool              syncing    = false;
      handshake_message last_handshake;
   };
   struct ordered_data {
      fc::optional<block_id_type>   block_id;
      unsigned int                  unRndNumber;
      string                        strDetKey;

      ordered_data(const fc::optional<block_id_type> &bid, const unsigned int &un, const string &str) : block_id(bid), unRndNumber(un), strDetKey(str) {}
      ordered_data(): block_id(), unRndNumber(),strDetKey(){}
   };
   class net_plugin : public appbase::plugin<net_plugin>
   {
      public:
        net_plugin();
        virtual ~net_plugin();

        APPBASE_PLUGIN_REQUIRES((chain_plugin))

        virtual void set_program_options(options_description& cli, options_description& cfg) override;
        void handle_sighup() override;

        void plugin_initialize(const variables_map& options);
        void plugin_startup();
        void plugin_shutdown();

        void   broadcast_block(const chain::signed_block &sb);

        string                       connect( const string& endpoint );
        string                       disconnect( const string& endpoint );
        optional<connection_status>  status( const string& endpoint )const;
        vector<connection_status>    connections()const;

        size_t num_peers() const;
      private:
        std::unique_ptr<class net_plugin_impl> my;
   };

}

FC_REFLECT( eosio::connection_status, (peer)(connecting)(syncing)(last_handshake) )
FC_REFLECT( eosio::ordered_data, (block_id)(unRndNumber)(strDetKey) )
