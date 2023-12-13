#!/bin/bash

make clean
make 
export OMP_NUM_THREADS=8
(time ./Onda) 2> tempoMFO3_t8.txt &
grof ./Onda > Profile_MFO3_8t.txt
