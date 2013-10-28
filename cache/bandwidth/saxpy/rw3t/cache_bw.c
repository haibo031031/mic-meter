#include <time.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
#include <omp.h>
#include <malloc.h>

#define DB_LVL 1
#define DB(n,info) {if(n!=0) printf("DB INFO:: %s\n",info);}
#define SAVE_DATA(...) {FILE *fp=fopen("raw.dat", "a"); \
						fprintf(fp, __VA_ARGS__); \
						fclose(fp);}
#define DT double 


#define SEPERATOR "-----------------------------------------------------"



/**
	synchronization
**/
#define SYNC {__asm__ __volatile__ ("cpuid");}

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
	benchmark entry
**/

int main(int argc, char** argv)
{
	/* variable declaration */
	DB(DB_LVL, "declaration");
	DT * memA_t0, *memA_t1, *memA_t2;
	DT * memB_t0, *memB_t1, *memB_t2;
	DT * memO_t0, *memO_t1, *memO_t2;  
	int reps, size;
	int samples;
	int tid;
	int i, p, r, bytes, elems;	
	int bytes_min, bytes_max;	
	int elems_min, elems_max;
	double func_overhead;
	double t_start, t_end;	
	double t_min, c_min;	
	double alpha = 0.5;
	DB(DB_LVL, SEPERATOR);
	
	/* initialization */
	DB(DB_LVL, "intialization");
	samples = 3;	
	bytes_min = 1024, bytes_max = 1024*32; /* [1KB, 8MB] */
	elems_min = bytes_min/sizeof(DT), elems_max = bytes_max/sizeof(DT); /* the number of elements */
	reps = 	40000;

	DB(DB_LVL, SEPERATOR);
	
	/* omp environment */
	omp_set_num_threads(3);

	/* iteration */
	DB(DB_LVL, "measurement");	
	for(elems=elems_min, bytes=bytes_min; elems<=elems_max; elems=elems+elems_min, bytes=bytes+bytes_min)
	{
		memA_t0 = (DT *)_mm_malloc(bytes_max, 64);
		memA_t1 = (DT *)_mm_malloc(bytes_max, 64);
		memA_t2 = (DT *)_mm_malloc(bytes_max, 64);
		memB_t0 = (DT *)_mm_malloc(bytes_max, 64);
		memB_t1 = (DT *)_mm_malloc(bytes_max, 64);
		memB_t2 = (DT *)_mm_malloc(bytes_max, 64);
		memO_t0 = (DT *)_mm_malloc(bytes_max, 64);
		memO_t1 = (DT *)_mm_malloc(bytes_max, 64);
		memO_t2 = (DT *)_mm_malloc(bytes_max, 64);

		/* initialization a local space */
		fill(memA_t0, elems, 1.0);
		fill(memA_t1, elems, 2.0);
		fill(memA_t2, elems, 3.0);
		fill(memB_t0, elems, 1.0);
		fill(memB_t1, elems, 2.0);
		fill(memB_t2, elems, 3.0);
		fill(memO_t0, elems, 0.0);
		fill(memO_t1, elems, 0.0);
		fill(memO_t2, elems, 0.0);
		
		/* measurement */
		t_min = 0.0f;
		c_min = 0.0f;
		DT ret_t0 = 0.0;		
		DT ret_t1 = 0.0;
		DT ret_t2 = 0.0;
		for(p=0; p<samples; p++)
		{			
			if(p==(samples-1))
				t_start = timer();	
			#pragma omp parallel shared(ret_t0, ret_t1, reps, elems) \
								private(tid)
			{
				tid = omp_get_thread_num();
				if(tid==0)
				{
					for(r=0; r<reps; r++)
					{
						for(i=0; i<elems; i=i+1)
						{
							//ret_t0 += mem_t0[i];
							memO_t0[i] = alpha * memA_t0[i] + memB_t0[i];
						}				
					 memO_t0[0] = memO_t0[0] * 0.1; // to avoid overflow and optimizations
					}								
				}	
				if(tid==1)
				{
					for(r=0; r<reps; r++)
					{
						for(i=0; i<elems; i=i+1)
						{
							//ret_t1 += mem_t1[i];
							memO_t1[i] = alpha * memA_t1[i] + memB_t1[i];
						}				
					 memO_t1[0] = memO_t1[0] * 0.1; // to avoid overflow and optimizations
					}								
				}	
				if(tid==2)
				{
					for(r=0; r<reps; r++)
					{
						for(i=0; i<elems; i=i+1)
						{
							//ret_t2 += mem_t2[i];
							memO_t2[i] = alpha * memA_t2[i] + memB_t2[i];
						}				
					 memO_t2[0] = memO_t2[0] * 0.1; // to avoid overflow and optimizations
					}								
				}	
				
				
			}
			if(p==(samples-1))
				t_end = timer();			
		}	
		t_min = (t_end - t_start)/reps;		
		printf("%lf,%lf,%lf\n", ret_t0, ret_t1, ret_t2);
		SAVE_DATA("%d\t%lf\n", bytes/1024, bytes/t_min)
		printf("cbw: %lf\t\n", bytes/t_min);
		if(memA_t0!=NULL) _mm_free(memA_t0);
		if(memA_t1!=NULL) _mm_free(memA_t1);
		if(memA_t2!=NULL) _mm_free(memA_t2);
		if(memB_t0!=NULL) _mm_free(memB_t0);
		if(memB_t1!=NULL) _mm_free(memB_t1);
		if(memB_t2!=NULL) _mm_free(memB_t2);
		if(memO_t0!=NULL) _mm_free(memO_t0);
		if(memO_t1!=NULL) _mm_free(memO_t1);
		if(memO_t2!=NULL) _mm_free(memO_t2);

	}		
	DB(DB_LVL, SEPERATOR);			
	
	/* post-process */
	DB(DB_LVL, "post-process");
	DB(DB_LVL, SEPERATOR);
}
