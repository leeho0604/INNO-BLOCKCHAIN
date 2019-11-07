#!/bin/bash
DATADIR="./blockchain"
CURDIRNAME=${PWD##*/}

if [ ! -d $DATADIR ]; then
	  mkdir -p $DATADIR;
  fi

  nodeos \
	  --genesis-json /home/eos/testnet/bp2"/genesis.json" \
	  --signature-provider EOS8mUftJXepGzdQ2TaCduNuSPAfXJHf22uex4u41ab1EVv9EAhWt=KEY:5K7EYY3j1YY14TSFVfqgtbWbrw3FA8BUUnSyFGgwHi8Uy61wU1o  \
	  --plugin eosio::producer_plugin \
	  --plugin eosio::chain_api_plugin \
	  --plugin eosio::http_plugin \
	  --plugin eosio::history_api_plugin \
	  --plugin eosio::history_plugin \
	  --plugin eosio::mongo_db_plugin \
	  --data-dir $DATADIR"/data" \
	  --blocks-dir $DATADIR"/blocks" \
	  --config-dir $DATADIR"/config" \
	  --producer-name hotsummer.lv \
	  --http-server-address 0.0.0.0:8888 \
	  --p2p-listen-endpoint 0.0.0.0:9018 \
	  --p2p-server-address 192.168.11.130:9018 \
	  --access-control-allow-origin=* \
	  --contracts-console \
	  --http-validate-host=false \
	  --verbose-http-errors \
	  --enable-stale-production \
	  --p2p-peer-address 192.168.11.118:9013 \
	  --p2p-peer-address 192.168.11.113:9012 \
	  --p2p-peer-address 192.168.11.115:9010 \
	  >> $DATADIR"/nodeos.log" 2>&1 & \
	  echo $! > $DATADIR"/eosd.pid"

