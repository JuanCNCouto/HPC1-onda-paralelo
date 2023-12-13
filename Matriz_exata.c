#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "Matriz_exata.h"
#include <omp.h>

void matriz_exata(double **y,int  n,double c,double h,double t){
 	int i,j,chunk=1;
 	double aux,u;
 	aux=c*sqrt(5)*t*h*0.5;
	aux=cos(aux);
	#pragma omp parallel for shared(y) private(i,j,u)
	#pragma omp Schedule(dynamic,chunk)
	for(i=0;i<n;i++){
    		for(j=0;j<n;j++){
      			u= aux*sin(2*(i*h))*sin(j*h);
			y[i][j]= u;
    		}
  	}
	
 }
