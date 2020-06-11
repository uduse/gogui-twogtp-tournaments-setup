#!/usr/bin/env bash
LOG_ID=$(cat /dev/urandom | LC_ALL=C tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
../KataGo/cpp/katago gtp -model model.bin.gz -config <(cat base.cfg mmcts_extra.cfg) -override-config logFile="mmcts_${LOG_ID}.log"
