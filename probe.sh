#!/bin/bash
C=$(curl -s -o r.txt -w "%{http_code}" -X POST https://testnet-api.titanx.cc/v1/parties/suggest -H "Content-Type: application/json" -d '{"sessionKey":"gha"}' --max-time 20)
echo "CODE:$C"
head -c 200 r.txt
