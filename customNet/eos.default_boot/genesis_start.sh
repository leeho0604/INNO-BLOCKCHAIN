#!/bin/bash
DATADIR="./blockchain"
PRIVDATADIR="./priv_blockchain"

if [ ! -d $DATADIR ]; then
	  mkdir -p $DATADIR;
	  mkdir -p $PRIVDATADIR;
  fi

  /home/ghlee/INNO-RTFDocs/eos/build/bin/nodeos \
	  --genesis-json /home/ghlee/INNO-RTFDocs/customNet/eos.default_boot"/genesis.json" \
	  --signature-provider EOS5DNGxfbFiwYBxRExL5wvmqEebuF8bSKUhpe5xq1gqFEsSaiyE5=KEY:5KLVv9yoioVhX4PtbLXoprzvYXzcMnkHm5MMwcT8vz9vzJ7KHFz \
	  --plugin eosio::producer_plugin \
	  --plugin eosio::chain_api_plugin \
	  --plugin eosio::http_plugin \
	  --plugin eosio::history_api_plugin \
	  --plugin eosio::history_plugin \
	  --data-dir $DATADIR"/data" \
	  --priv-data-dir $PRIVDATADIR"/data" \
	  --blocks-dir $DATADIR"/blocks" \
	  --config-dir $DATADIR"/config" \
	  --producer-name eosio.tae111 \
	  --http-server-address 0.0.0.0:8888 \
          --p2p-listen-endpoint 0.0.0.0:9010 \
	  --access-control-allow-origin=* \
	  --contracts-console \
	  --http-validate-host=false \
	  --verbose-http-errors \
	  --enable-stale-production \
	  --p2p-peer-address 192.168.13.141:9011 \
	  >> $DATADIR"/nodeos.log" 2>&1 & \
	  echo $! > $DATADIR"/eosd.pid"
