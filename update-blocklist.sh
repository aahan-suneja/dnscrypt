#!/bin/bash
cd ~/dnscrypt/generate-domains-blocklist
python3 generate-domains-blocklist.py -o ~/dnscrypt/blocked-names.txt
cd ..
git add blocked-names.txt
git commit -m "Last updated: $(date +%F)"
git push
