#!/bin/bash
 
sed -i 's/#server#:#port#/'"${SS-SERVER}:${SS-PORT}"'/g' /usr/local/etc/haproxy/haproxy.cfg
haproxy -f /usr/local/etc/haproxy/haproxy.cfg 

