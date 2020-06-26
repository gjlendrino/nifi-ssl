#!/bin/bash

# docker run --name nifi \
#   -p 8080:8080 \
#   -d \
#   apache/nifi:latest

docker run --name nifi \
  -v /home/thales/tas/trainning/nifi/nifi-toolkit-1.11.4/target-1000/localhost/keystore.jks:/opt/certs/keystore.jks \
  -v /home/thales/tas/trainning/nifi/nifi-toolkit-1.11.4/target-1000/localhost/truststore.jks:/opt/certs/truststore.jks \
  -p 8443:8443 \
  -e AUTH=tls \
  -e KEYSTORE_PATH=/opt/certs/keystore.jks \
  -e KEYSTORE_TYPE=JKS \
  -e KEYSTORE_PASSWORD=8bBf+Twak3JGXNzZke9hMwzVKVDHyA23+57Fkfvvn9c \
  -e TRUSTSTORE_PATH=/opt/certs/truststore.jks \
  -e TRUSTSTORE_PASSWORD=+EXqnOROmTkYz5aWoJ/EBBJC4MYK8p/TiZEzNLLBUQA \
  -e TRUSTSTORE_TYPE=JKS \
  -e INITIAL_ADMIN_IDENTITY='CN=sys_admin, OU=NIFI' \
  -d \
  apache/nifi:latest
