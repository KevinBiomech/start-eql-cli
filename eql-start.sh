#!/bin/bash


AC_NAME=EQL
AC_SUPPLY=500000000
SEEDIP1=46.101.124.153


# run container
docker run -d --rm --name $AC_NAME -ti \
  --net host \
  --mount "src=$AC_NAME,dst=/home/komodo/" \
  kmdplatform/komodod:sapling_lite \
  -pubkey=$PUBKEY \
  -bind=0.0.0.0 \
  -rpcbind=127.0.0.1 \
  -rpcallowip=0.0.0.0/0 \
  -whitelist=127.0.0.1 \
  -ac_name=$AC_NAME \
  -ac_supply=$AC_SUPPLY \
  -ac_sapling=5000000 \
  -addnode=$SEEDIP1 
