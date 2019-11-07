#include <eosio/chain/priv_block_state.hpp>
#include <eosio/chain/exceptions.hpp>

namespace eosio { namespace chain {

   priv_block_state::priv_block_state( const priv_block_header_state& prev, block_timestamp_type when )
   :priv_block_header_state( prev.generate_next( when ) ), 
    block( std::make_shared<priv_signed_block>()  )
   {
      static_cast<block_header&>(*block) = header;
   }

   priv_block_state::priv_block_state( const priv_block_header_state& prev, priv_signed_block_ptr b, bool skip_validate_signee )
   :priv_block_header_state( prev.next( *b, skip_validate_signee )), block( move(b) )
   { }



} } /// eosio::chain
