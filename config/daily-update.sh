#!/bin/sh
/etc/init.d/dnscrypt-proxy-2 stop
cd /tmp/etc/
curl -sSL https://raw.githubusercontent.com/aahan-suneja/dnscrypt/master/blocked-names.txt -o blocked-names.txt
cd /tmp/log/
: > blocked-names.log
/etc/init.d/dnscrypt-proxy-2 start
