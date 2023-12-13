CC=gcc

CFLAGS= -I. -lm -fopenmp -O2 -fexpensive-optimizations -m64 -foptimize-register-move -funroll-loops -ffast-math -mtune=corei7-avx -pg -g 
#CFLAGS= -I.-O2 -mtune=native -fopenmp -lm
DEPS= C_I_C.h Primeiro_passo.h Df.h L_f.h Matriz_dif.h Salvar_matriz.h Matriz_exata.h Wave.h main.h
	 
Onda: C_I_C.o Primeiro_passo.o Df.o L_f.o Matriz_dif.o Salvar_matriz.o Matriz_exata.o Wave.o main.o
	$(CC) $(CFLAGS) -o Onda C_I_C.o Primeiro_passo.o Df.o L_f.o Matriz_dif.o Salvar_matriz.o Matriz_exata.o Wave.o main.o 

.PHONY:clean

clean:
	rm -fr ./saida/*.dat *.o ./Onda
