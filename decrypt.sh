#!/bin/bash
openssl pkeyutl -decrypt -inkey private.pem -in encrypted.bin -out decrypted.txt
