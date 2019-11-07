#!/bin/bash
DATADIR="./blockchain"
CURDIRNAME=${PWD##*/}

if [ ! -d $DATADIR ]; then
	  mkdir -p $DATADIR;
  fi

  nodeos \
	  --genesis-json /home/eom/prtest/biosboot"/genesis.json" \
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
	  --http-server-address 127.0.0.1:8012 \
	  --p2p-listen-endpoint 127.0.0.1:9012 \
	  --access-control-allow-origin=* \
	  --contracts-console \
	  --http-validate-host=false \
	  --verbose-http-errors \
	  --enable-stale-production \
	  --p2p-peer-address localhost:9010 \
	  --p2p-peer-address localhost:9011 \
	  --p2p-peer-address localhost:9013 \
	  >> $DATADIR"/nodeos.log" 2>&1 & \
	  echo $! > $DATADIR"/eosd.pid"
