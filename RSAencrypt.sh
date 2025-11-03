#!/bin/bash

#prompt to enter file
read -p "enter file: " filename

#generate RSA private key
openssl genpkey -algorithm RSA -out private.pem -pkeyopt rsa_keygen_bits:2048

#extract public key
openssl rsa -pubout -in private.pem -out public.pem

#encrypt file
openssl pkeyutl -encrypt -inkey public.pem -pubin -in "$filename" -out encrypted.bin

echo "File encrypted as encrypted.bin"
