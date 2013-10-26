#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <malloc.h>
#include <immintrin.h>
/**
	macro definitions
**/
#define DT float
						
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
		
	return (double)t_val*1.0e-9;	
}

int main(int argc, char** argv)
{
	/* declearation */
	DT *a, *b;
	int i, r, rep;
	int arr_s;
	double t_start, t_end, deltaT;
		
	/* initialization */
	a = NULL, b = NULL;
	arr_s = 1024; 
	rep = 100000;
	
	/* memory allocation */
	//a = (DT *)malloc(arr_s * sizeof(DT));
	a = (DT *)_mm_malloc(arr_s * sizeof(DT), 64);
	fill(a, arr_s, 10.0);
	b = (DT *)_mm_malloc(arr_s * sizeof(DT), 64);
	
	__m512 va, vb;
	
	/* measurement */
	t_start = timer();
	for(r=0; r<rep; r++)
	{

		for(i=0; i<arr_s; i=i+16)
		{
			va = _mm512_load_ps(&(a[i]));
			vb=_mm512_exp2_ps(va);
			_mm512_store_ps(&(b[i]), vb);
		}			
		a[0] = a[0]*0.1;
	}
	t_end = timer();
	printf("times: %lf\n", (t_end - t_start));
	printf("%lf\n", b[0]);
	/* post-process */
	if(a!=NULL) _mm_free(a);
	if(b!=NULL) _mm_free(b);
	return 0;
}




