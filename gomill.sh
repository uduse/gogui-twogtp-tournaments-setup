#!/usr/bin/env bash
: ${NUM_GAMES:=10}
: ${NUM_THREADS:=10}
: ${BOARD_SIZE:=9}

echo 'NUM_GAMES:' $NUM_GAMES
echo 'NUM_THREADS:' $NUM_THREADS

cat gomill.ctl | sed "s/number_of_games=10/number_of_games=${NUM_GAMES}/g" | sed "s/board_size = 9/board_size = ${BOARD_SIZE}/g" > .tmp.ctl
ringmaster .tmp.ctl run -j ${NUM_THREADS}
rm -f .tmp.ctl
