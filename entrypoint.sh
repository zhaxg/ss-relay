#!/bin/bash
 
sed -i 's/#server#/'"${SS-SERVER}"'/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i 's/#port#/'"${SS-PORT}"'/g' /usr/local/etc/haproxy/haproxy.cfg

haproxy -f /usr/local/etc/haproxy/haproxy.cfg 

