#pragma once
#include <eosio/chain/priv_controller.hpp>
#include <eosio/chain/types.hpp>

#include <boost/multi_index_container.hpp>
#include <boost/multi_index/member.hpp>
#include <boost/multi_index/ordered_index.hpp>
#include <boost/multi_index/hashed_index.hpp>
#include <boost/multi_index/mem_fun.hpp>
#include <boost/multi_index/composite_key.hpp>

#include "multi_index_includes.hpp"

#include <fc/optional.hpp>

namespace eosio { namespace chain {
   using boost::multi_index_container;
   using namespace boost::multi_index;

   class sss_object : public chainbase::object<sss_object_type, sss_object>
   {
      OBJECT_CTOR(sss_object)
      id_type                          id;
      fc::optional<block_id_type>      block_id;
      unsigned int                     unRndNumber;
      string                           strDetKey;

      sss_object(const block_id_type &bid, const unsigned int &un, const string &str) : block_id(bid), unRndNumber(un), strDetKey(str) {}
   };


      struct by_blockId;
      struct by_key_blockId;
      struct by_sharmirKey;
      using sss_multi_index = chainbase::shared_multi_index_container<
         sss_object,
         indexed_by<
            ordered_unique<tag<by_id>, member<sss_object, sss_object::id_type, &sss_object::id>>,
            ordered_unique<tag<by_blockId>, member<sss_object, fc::optional<block_id_type>, &sss_object::block_id>>,
            ordered_unique<tag<by_sharmirKey>, member<sss_object, std::string, &sss_object::strDetKey>>,
            ordered_unique<tag<by_key_blockId>, composite_key<sss_object,
                                                               member<sss_object, fc::optional<block_id_type>, &sss_object::block_id>, member<sss_object, std::string, &sss_object::strDetKey>>>>>;
} } /// eosio::chain

CHAINBASE_SET_INDEX_TYPE(eosio::chain::sss_object, eosio::chain::sss_multi_index)

FC_REFLECT(eosio::chain::sss_object, (block_id)(unRndNumber)(strDetKey))