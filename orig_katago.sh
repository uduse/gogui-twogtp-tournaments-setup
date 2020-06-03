#!/usr/bin/env bash
katago gtp -model model.bin.gz -config base.cfg -override-config logFile="orig.log"
