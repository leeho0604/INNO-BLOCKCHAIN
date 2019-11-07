#!/bin/bash
DATADIR="./blockchain"
CURDIRNAME=${PWD##*/}

if [ ! -d $DATADIR ]; then
	  mkdir -p $DATADIR;
  fi

  nodeos \
	  --signature-provider EOS87reuz3Give3tTruHW7JJNo7darZmvFq3aNpr4SUVdjJgmbej1=KEY:5J2Qqhvi7QLkVZEMUkTmgwq5KCYfBGJ9S189NHy17vYnMZ1WR4A \
	  --plugin eosio::producer_plugin \
	  --plugin eosio::chain_api_plugin \
	  --plugin eosio::http_plugin \
	  --plugin eosio::history_api_plugin \
	  --plugin eosio::history_plugin \
	  --data-dir $DATADIR"/data" \
	  --blocks-dir $DATADIR"/blocks" \
	  --config-dir $DATADIR"/config" \
	  --producer-name $CURDIRNAME \
	  --http-server-address 0.0.0.0:8012 \
	  --p2p-listen-endpoint 0.0.0.0:9012 \
	  --p2p-server-address 192.168.11.72:9012 \
	  --access-control-allow-origin=* \
	  --contracts-console \
	  --http-validate-host=false \
	  --verbose-http-errors \
	  --enable-stale-production \
	  --p2p-peer-address 192.168.11.72:9010 \
	  --p2p-peer-address 192.168.11.72:9011 \
	  --p2p-peer-address 192.168.11.72:9013 \
	  --p2p-peer-address 192.168.56.1:9876 \
	  >> $DATADIR"/nodeos.log" 2>&1 & \
	  echo $! > $DATADIR"/eosd.pid"
