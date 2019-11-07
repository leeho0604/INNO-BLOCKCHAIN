
/**
 *  @file
 *  @copyright defined in eos/LICENSE
 */
#pragma once
#include <eosio/chain/types.hpp>
#include <eosio/chain/authority.hpp>
#include <eosio/chain/block_timestamp.hpp>
#include <eosio/chain/contract_types.hpp>

#include "multi_index_includes.hpp"

namespace eosio { namespace chain {

   class priv_reversible_block_object : public chainbase::object<priv_reversible_block_object_type, priv_reversible_block_object> {
      OBJECT_CTOR(priv_reversible_block_object,(packedblock) )

      id_type        id;
      uint32_t       blocknum = 0;
      shared_string  packedblock;

      void set_block( const priv_signed_block_ptr& b ) {
         packedblock.resize( fc::raw::pack_size( *b ) );
         fc::datastream<char*> ds( packedblock.data(), packedblock.size() );
         fc::raw::pack( ds, *b );
      }

      priv_signed_block_ptr get_block()const {
         fc::datastream<const char*> ds( packedblock.data(), packedblock.size() );
         auto result = std::make_shared<priv_signed_block>();
         fc::raw::unpack( ds, *result );
         return result;
      }
   };

   struct by_num;
   using priv_reversible_block_index = chainbase::shared_multi_index_container<
      priv_reversible_block_object,
      indexed_by<
         ordered_unique<tag<by_id>, member<priv_reversible_block_object, priv_reversible_block_object::id_type, &priv_reversible_block_object::id>>,
         ordered_unique<tag<by_num>, member<priv_reversible_block_object, uint32_t, &priv_reversible_block_object::blocknum>>
      >
   >;
} } // eosio::chain

CHAINBASE_SET_INDEX_TYPE(eosio::chain::priv_reversible_block_object, eosio::chain::priv_reversible_block_index)
