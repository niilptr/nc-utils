#!/bin/bash
APPD=ncd
TXHASH=$($APPD tx alias register "${1}" --from="${2}" -y | grep txhash | sed 's/txhash: //')
sleep 2
$APPD q tx $TXHASH | grep raw_log