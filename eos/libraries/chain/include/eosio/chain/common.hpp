
#pragma once
namespace eosio {
   using chain::controller;
   using std::unique_ptr;
   using std::pair;
   using namespace appbase;
   using chain::name;
   using chain::uint128_t;
   using chain::public_key_type;
   using chain::transaction;
   using chain::transaction_id_type;
   using fc::optional;
   using boost::container::flat_set;
   using chain::asset;
   using chain::symbol;
   using chain::authority;
   using chain::account_name;
   using chain::action_name;
   using chain::abi_def;
   using chain::abi_serializer;
   

   fc::time_point calculate_genesis_timestamp( std::string tstr ) {
      fc::time_point genesis_timestamp;
      if( strcasecmp (tstr.c_str(), "now") == 0 ) {
         genesis_timestamp = fc::time_point::now();
      } else {
         genesis_timestamp = chain::time_point::from_iso_string( tstr );
      }

      auto epoch_us = genesis_timestamp.time_since_epoch().count();
      auto diff_us = epoch_us % chain::config::block_interval_us;
      if (diff_us > 0) {
         auto delay_us = (chain::config::block_interval_us - diff_us);
         genesis_timestamp += fc::microseconds(delay_us);
         dlog("pausing ${us} microseconds to the next interval",("us",delay_us));
      }

      ilog( "Adjusting genesis timestamp to ${timestamp}", ("timestamp", genesis_timestamp) );
      return genesis_timestamp;
   }

   void clear_directory_contents( const fc::path& p ) {
      using boost::filesystem::directory_iterator;

      if( !fc::is_directory( p ) )
         return;

      for( directory_iterator enditr, itr{p}; itr != enditr; ++itr ) {
         fc::remove_all( itr->path() );
      }
   }
}
