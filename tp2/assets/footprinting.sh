#!/bin/bash

if [[ $# < 1 ]]; then
    echo "Usage: bash footprinting.sh <DOMAIN>"
    exit 1
fi

DOMAIN=$1
OPTIONS=( "NS" "MX" "SOA" )

for option in "${OPTIONS[@]}"; do
    CMD="dig -t $option +short $DOMAIN"
    echo -e "\n*** $CMD ***"
    eval $CMD
done

CMD="whois $DOMAIN"
echo -e "\n*** $CMD ***"
eval $CMD
