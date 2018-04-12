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
    today=`date '+%Y_%m_%d'`;
    nslookup $i 2>&1 | grep Address | cut -d' ' -f2 >> Bitcoin_IP_From_DNS_$today.txt
    nslookup $i >> All_DNS_Bitcoin_data_$today.txt

done
