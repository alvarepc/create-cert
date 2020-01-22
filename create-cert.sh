#!/bin/bash

echo "Generating a private key..."
openssl genrsa -out ssl.key 2048
echo 

echo "Generating a CSR..."
openssl req -new -key ssl.key -out ssl.csr
echo

echo "Generating a certificate..."
openssl x509 -req -days 999 -in ssl.csr -signkey ssl.key -out ssl.crt
echo
echo "DONE."
echo
