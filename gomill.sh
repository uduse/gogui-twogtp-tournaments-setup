#!/usr/bin/env bash
: ${NUM_GAMES:=10}
: ${NUM_THREADS:=10}
: ${BOARD_SIZE:=9}

echo 'NUM_GAMES:' $NUM_GAMES
echo 'NUM_THREADS:' $NUM_THREADS

ringmaster <(cat gomill.ctl | sed "s/number_of_games=10/number_of_games=${NUM_GAMES}/g" ) run -j ${NUM_THREADS}
