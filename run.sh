#!/usr/bin/env bash
: ${WHITE:=./orig_katago.sh}
: ${BLACK:=./mmcts_katago.sh}
: ${NUM_GAMES:=10}
: ${NUM_THREADS:=10}
: ${BOARD_SIZE:=9}

set -e  # exit on error

NOW=$(date +'%m-%d_%H:%M:%S')
echo 'NUM_THREADS:' $NUM_THREADS
echo 'NUM_GAMES:' $NUM_GAMES
time gogui-twogtp -black $BLACK -white $WHITE -size $BOARD_SIZE -verbose -threads $NUM_THREADS -alternate -games ${NUM_GAMES} -auto -sgffile result-${NOW} 2>&1 | gnomon
gogui-twogtp -analyze result-${NOW}.dat
cat result-${NOW}.summary.dat <(cat base.cfg | grep 'maxVisits =') mmcts_extra.cfg <(echo "head hash: " $(git rev-parse HEAD)) > result-${NOW}.run.dat
