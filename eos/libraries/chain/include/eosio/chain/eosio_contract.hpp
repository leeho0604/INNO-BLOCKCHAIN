/**
 *  @file
 *  @copyright defined in eos/LICENSE
 */
#pragma once

#include <eosio/chain/types.hpp>
#include <eosio/chain/contract_types.hpp>

namespace eosio { namespace chain {

   class apply_context;

   /**
    * @defgroup native_action_handlers Native Action Handlers
    */
   ///@{
   void apply_eosio_newaccount(apply_context&);
   
   void apply_eosio_updateauth(apply_context&);
   void apply_eosio_deleteauth(apply_context&);
   void apply_eosio_linkauth(apply_context&);
   void apply_eosio_unlinkauth(apply_context&);

   // ---- priv function ---
   void priv_apply_eosio_newaccount(priv_apply_context &);
   void priv_apply_eosio_updateauth(priv_apply_context &);
   void priv_apply_eosio_deleteauth(priv_apply_context &);
   void priv_apply_eosio_linkauth(priv_apply_context &);
   void priv_apply_eosio_unlinkauth(priv_apply_context &);
   // ---- priv end ----

   /*
   void apply_eosio_postrecovery(apply_context&);
   void apply_eosio_passrecovery(apply_context&);
   void apply_eosio_vetorecovery(apply_context&);
   */

   void apply_eosio_setcode(apply_context&);
   void apply_eosio_setabi(apply_context&);

   void apply_eosio_canceldelay(apply_context&);

   // ---- priv function ----
   void priv_apply_eosio_setcode(priv_apply_context &);
   void priv_apply_eosio_setabi(priv_apply_context &);

   void priv_apply_eosio_canceldelay(priv_apply_context &);
   // ---- priv end ----

   ///@}  end action handlers

} } /// namespace eosio::chain
