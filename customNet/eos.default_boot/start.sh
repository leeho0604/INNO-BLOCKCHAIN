#!/bin/bash
DATADIR="./blockchain"

if [ ! -d $DATADIR ]; then
	  mkdir -p $DATADIR;
  fi

  nodeos \
	  --signature-provider EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV=KEY:5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3 \
	  --plugin eosio::producer_plugin \
	  --plugin eosio::chain_api_plugin \
	  --plugin eosio::http_plugin \
	  --plugin eosio::history_api_plugin \
	  --plugin eosio::history_plugin \
	  --data-dir $DATADIR"/data" \
	  --blocks-dir $DATADIR"/blocks" \
	  --config-dir $DATADIR"/config" \
	  --producer-name eosio \
	  --http-server-address 0.0.0.0:8888 \
	  --p2p-listen-endpoint 0.0.0.0:9010 \
	  --p2p-server-address 192.168.11.72:9010\
	  --access-control-allow-origin=* \
	  --contracts-console \
	  --http-validate-host=false \
	  --verbose-http-errors \
	  --enable-stale-production \
	  --p2p-peer-address 192.168.11.72:9011 \
	  --p2p-peer-address 192.168.11.72:9012 \
	  --p2p-peer-address 192.168.11.72:9013 \
	  --p2p-peer-address 192.168.56.1:9876 \
	  >> $DATADIR"/nodeos.log" 2>&1 & \
	  echo $! > $DATADIR"/eosd.pid"
