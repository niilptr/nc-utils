#!/bin/bash
TXHASH=$(namechaind tx alias register "${1}" --from="${2}" -y | grep txhash | sed 's/txhash: //')
sleep 2
namechaind q tx "$TXHASH" | grep raw_log