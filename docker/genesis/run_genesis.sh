#!/bin/bash -e
PHRASE="Kietcoin launched and even one drink is unhealthy"
GENESIS_REWARD_PUBKEY=04017861CD9B9DA8D02F7DE1CD4809E8AD72E570B971425D97ED6E0958977C8060E9AC7C9EA3342BF5DD42453409AAA34C0E35F427B28E2BC568E39784E96A9201
TIMESTAMP=1523614203

NONCE=2258391

docker run  --volume=/Users/freekgroot/KietCoin/kietcoin/docker/genesis/GenesisH0:/GenesisH0:rw newcoin-env /bin/bash -c "python /GenesisH0/genesis.py -a scrypt -z \"$PHRASE\" -p $GENESIS_REWARD_PUBKEY -t $TIMESTAMP -n $NONCE 2>&1 | tee /GenesisH0/kietcoin-main.txt"
