#!/bin/ls

NUM=100000

BENCHMARKS=fillseq fillrandom fillrandbatch overwrite overwritebatch readrandom

RUNS=2

for i in $BENCHMARKS; do
  ln -s db_bench_sqlite3 $i
  for j in $(seq 1 $RUNS); do
    ./i --benchmarks=$i --num=$NUM
  done
  rm $i
done
