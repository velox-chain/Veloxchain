#!/bin/sh
set -e

if [ ! -d "/root/.ethereum/geth" ]; then
  geth init /app/genesis.json
fi

exec geth \
  --http \
  --http.addr 0.0.0.0 \
  --http.port 8545 \
  --http.api eth,net,web3 \
  --http.corsdomain "*" \
  --http.vhosts "*" \
  --networkid 18591223 \
  --syncmode full \
  --nodiscover \
  --verbosity 3
