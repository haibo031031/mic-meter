#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <omp.h>
#include <math.h>
#include <malloc.h>
/**
	macro definitions
**/
#define DT double
#define N 2000000
#define DB_LVL 1
#define RT_LVL 99
#define DB(n, ...) {if(n!=0) printf("DB INFO:: "); \
					printf(__VA_ARGS__); \
					printf("\n"); \
					if(n==RT_LVL) exit(-1); }
					
#define SAVE_DATA(...) {FILE *fp=fopen("raw.dat", "a"); \
						fprintf(fp, __VA_ARGS__); \
						fclose(fp);}
#define MIC						

/**
	fill an array with random number
	@params A: pointer to the memory space
	@params n: the number of elements
	@params maxv: the maximum value
**/
void fill(DT * A, long n, DT maxv){
	long i;
    for (i = 0; i < n; i++)
    {
        A[i] = ((DT) maxv * (rand() / (RAND_MAX + 1.0f)));
    }
    return ;
}

/**
	timer
**/
double timer()
{
	long t_val = 0;	
	struct timespec ts;
	
	clock_gettime(CLOCK_REALTIME,&ts);
	t_val = ts.tv_sec * 1e+9 + ts.tv_nsec;
		
	return (double)t_val;	
}

#define MAX_RELATIVE_ERROR  .002
void verify_array(DT * res_a, DT * res_b, long size){

    int passed = 1; 
    long i;
    for (i=0; i<size; i++){
      //printf("%lf\t", res_b[i]);        
      if (fabs(res_a[i] - res_b[i]) / res_a[i] > MAX_RELATIVE_ERROR){
	      passed = 0; 
		  break;		  
      }
    }
    if(passed){
        printf("passed.\n");
    }
    else{
        printf("failed.\n");        
    }
    return ;
}


/**
	save the results
	@param res: the array to be saved
	@param s:	the number of elements
**/
void save_results(double * res, long s){
	long i;
	FILE *fp = fopen("tmp.dump", "a");
	for(i=0; i<s; i++)
	{
		fprintf(fp, "%lf\t", res[i]);
	}	
	fclose(fp);
	return ;
}


int main(int argc, char** argv)
{
	/* declearation */
	DT *a, b;
	long arr_bytes, arr_size, p;
	int i, samples;
	double t_start, t_end, deltaT;
	/* initialization */
	b = 0.0;
	arr_bytes = 512 * 1024 * 1024; // 1GB
	arr_size = arr_bytes/sizeof(DT);
	samples = 3;
	/* memory allocation */
#ifndef MIC
	a = (DT *)malloc(arr_bytes);
#else
	a = (DT *)_mm_malloc(arr_bytes, 64);
#endif
	if(a==NULL)
	{
		DB(RT_LVL, "array 'a' allocation failed");
	}
	fill(a, arr_size, 5.0);
	
	
	/* measurement */
	for(i=-2; i<samples; i++)
	{
		t_start = timer();
	//#pragma omp parallel for private(p) shared(a, arr_size) reduction(+:b)
	#pragma omp parallel private(p) shared(a, arr_size) reduction(+:b)
		for(p=0; p<arr_size; p++)
		{
			b += a[p];
		}
		b = b * 0.001;
		t_end = timer();						
		if(i==(samples-1))
		{
			deltaT = t_end - t_start;
			SAVE_DATA("%lf\t", arr_bytes/deltaT)
			printf("bw: %lf\t", arr_bytes/deltaT);
		}
	}
	save_results(&b, 1); // save results to avoid the aggressive optimizations	
	SAVE_DATA("\n")
	
	/* post-process */
#ifndef MIC
	if(a!=NULL) free(a);
#else
	if(a!=NULL) _mm_free(a);
#endif
	return 0;
}


