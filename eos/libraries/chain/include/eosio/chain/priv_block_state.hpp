/**
 *  @file
 *  @copyright defined in eos/LICENSE
 */
#pragma once

#include <eosio/chain/priv_block_header_state.hpp>
#include <eosio/chain/block.hpp>
#include <eosio/chain/transaction_metadata.hpp>
#include <eosio/chain/action_receipt.hpp>

namespace eosio { namespace chain {

   struct priv_block_state : public priv_block_header_state {
      explicit priv_block_state( const priv_block_header_state& cur ):priv_block_header_state(cur){}
      priv_block_state( const priv_block_header_state& prev, priv_signed_block_ptr b, bool skip_validate_signee );
      priv_block_state( const priv_block_header_state& prev, block_timestamp_type when );
      priv_block_state() = default;

      /// weak_ptr prev_priv_block_state....
      priv_signed_block_ptr                                    block;
      bool                                                validated = false;
      bool                                                in_current_chain = false;

      /// this data is redundant with the data stored in block, but facilitates
      /// recapturing transactions when we pop a block
      vector<transaction_metadata_ptr>                    trxs;
   };

   using priv_block_state_ptr = std::shared_ptr<priv_block_state>;

} } /// namespace eosio::chain

FC_REFLECT_DERIVED( eosio::chain::priv_block_state, (eosio::chain::priv_block_header_state), (block)(validated)(in_current_chain) )
