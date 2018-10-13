#!/bin/bash

PUERTOS=( 21 22 80 443 )
for i in "${PUERTOS[@]}"
do
    echo "PUERTO $i"
    ncat -k -l $i && \
        echo "***ESCUCHANDO EN EL PUERTO $i***" || \
        echo "***NO SE PUDO CREAR EL SERVIDOR EN EL PUERTO $i***" &
done
