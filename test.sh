#!/bin/bash


for i in seed.bitcoin.jonasschnelli.ch \
    seed.tbtc.petertodd.org \
    dnsseed.bluematt.me \
    dnsseed.bitcoin.dashjr.org \
    seed.bitcoinstats.com \
    seed.bitcoin.jonasschnelli.ch \
    seed.btc.petertodd.org \
    seed.bitcoin.sipa.be \
    seed.bitcoin.schildbach.de
do
    nslookup $i 2>&1 | grep Address | cut -d' ' -f2 >> Bitcoin_IP_From_DNS.txt
done
