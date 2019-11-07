#!/bin/bash
DATADIR="./blockchain"

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
	--producer-name hotsummer.lv \
	--http-server-address 0.0.0.0:8888 \
	--p2p-listen-endpoint 0.0.0.0:9018 \
	--p2p-server-address 192.168.11.130:9018 \
	--access-control-allow-origin=* \
	--contracts-console \
	--http-validate-host=false \
	--verbose-http-errors \
	--enable-stale-production \
	--p2p-peer-address 192.168.11.113:9012 \
	--p2p-peer-address 192.168.11.118:9013 \
	#--p2p-peer-address localhost:9013 \
	--hard-replay-blockchain --mongodb-wipe \
	>> $DATADIR"/nodeos.log" 2>&1 & \
	echo $! > $DATADIR"/eosd.pid"

