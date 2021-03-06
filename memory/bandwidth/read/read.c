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

#include <stdint.h>
#define FLUSH_CACHE_ARRAY_LENGTH 7471104
double FC[FLUSH_CACHE_ARRAY_LENGTH];

void init_flush_cache_array() {
  uint64_t i;
  int tid = omp_get_thread_num();
  int nt = omp_get_num_threads();
  int per_t = FLUSH_CACHE_ARRAY_LENGTH/nt;
  uint64_t offset = tid * per_t;

  for (i=0; i < per_t; i++) {
    FC[offset+i] = 0.0;
  }
}

/* This function attempts to flush the cache by adding 1 to each element of the FC array */
void flush_cache() {
  uint64_t i;
  int tid = omp_get_thread_num();
  int nt = omp_get_num_threads();
  int per_t = FLUSH_CACHE_ARRAY_LENGTH/nt;
  uint64_t offset = tid * per_t;
  for (i=0; i < per_t; i++) {
    FC[offset+i] += 1.0;
  }
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
	arr_bytes = 1024 * 1024 * 1024; // 1GB
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
#pragma omp parallel
{
	init_flush_cache_array();
}	
	
	/* measurement */
	for(i=0; i<samples; i++)
	{
#pragma omp parallel
{
	flush_cache();
}
		t_start = timer();
	#pragma omp parallel for private(p) shared(a, arr_size) reduction(+:b)
		for(p=0; p<arr_size; p++)
		{
			b += a[p];
		}
		b = b * 0.1;
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




