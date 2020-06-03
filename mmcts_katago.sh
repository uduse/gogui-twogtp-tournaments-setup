#!/usr/bin/env bash
../KataGo/cpp/katago gtp -model model.bin.gz -config <(cat base.cfg mmcts_extra.cfg) -override-config logFile="mmcts.log"
