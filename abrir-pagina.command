#!/usr/bin/env bash
cd "$(dirname "$0")"
for p in 8888 5500; do
  lsof -ti :"$p" 2>/dev/null | xargs kill -9 2>/dev/null
done
nohup python3 -m http.server 5500 --bind 127.0.0.1 >/tmp/estrellitas-server.log 2>&1 &
sleep 0.8
open "http://127.0.0.1:5500/" 2>/dev/null || open -a "Google Chrome" "http://127.0.0.1:5500/"
