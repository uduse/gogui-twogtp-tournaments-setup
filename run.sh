#!/usr/bin/env bash
: ${WHITE:=./orig_katago.sh}
: ${BLACK:=./mmcts_katago.sh}
: ${NUM_GAMES:=10}
: ${NUM_THREADS:=10}

NOW=$(date +"%T")
gogui-twogtp -black $BLACK -white $WHITE -verbose -threads $NUM_THREADS -alternate -games ${NUM_GAMES} -auto -sgffile result-${NOW} 2>&1 | gnomon
gogui-twogtp -analyze result-${NOW}.dat
