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
	DT * mem_t0, *mem_t1;
	DT * memO0_t0, *memO0_t1;
	DT * memO1_t0, *memO1_t1;    
	int reps, size;
	int samples;
	int tid;
	int i, p, r, bytes, elems;	
	int bytes_min, bytes_max;	
	int elems_min, elems_max;
	double func_overhead;
	double t_start, t_end;	
	double t_min, c_min;	
	DB(DB_LVL, SEPERATOR);
	
	/* initialization */
	DB(DB_LVL, "intialization");
	samples = 3;	
	bytes_min = 1024*5, bytes_max = 1024*5; /*  */
	elems_min = bytes_min/sizeof(DT), elems_max = bytes_max/sizeof(DT); /* the number of elements */
	reps = 	4000000;
	double alpha = 0.5;

	DB(DB_LVL, SEPERATOR);
	
	/* omp environment */
	omp_set_num_threads(2);

	/* iteration */
	DB(DB_LVL, "measurement");	
	for(elems=elems_min, bytes=bytes_min; elems<=elems_max; elems=elems+elems_min, bytes=bytes+bytes_min)
	{
		mem_t0 = (DT *)_mm_malloc(bytes, 64);
		mem_t1 = (DT *)_mm_malloc(bytes, 64);
		memO0_t0 = (DT *)_mm_malloc(bytes, 64);
		memO1_t0 = (DT *)_mm_malloc(bytes, 64);
		memO0_t1 = (DT *)_mm_malloc(bytes, 64);
		memO1_t1 = (DT *)_mm_malloc(bytes, 64);
		/* initialization a local space */
		fill(mem_t0, elems, 10.0);
		fill(mem_t1, elems, 5.0);
		fill(memO0_t0, elems, 0.0);
		fill(memO0_t1, elems, 0.0);
		fill(memO1_t0, elems, 0.0);
		fill(memO1_t1, elems, 0.0);
		
		/* measurement */
		t_min = 0.0f;
		c_min = 0.0f;
		DT ret_t0 = 0.0;		
		DT ret_t1 = 0.0;
		for(p=0; p<samples; p++)
		{			
			if(p==(samples-1))
				t_start = timer();	
			#pragma omp parallel shared(reps, elems) \
								private(tid)
			{
				tid = omp_get_thread_num();
				if(tid==0)
				{
					for(r=0; r<reps; r++)
					{
						for(i=0; i<elems; i=i+1)
						{
							DT val = alpha * mem_t0[i];
							memO0_t0[i] = val;
							memO1_t0[i] = val;
						}				
					 memO0_t0[0] = memO0_t0[0] * 0.1; // to avoid overflow and optimizations
					 memO1_t0[1] = memO1_t0[1] * 0.1; // to avoid overflow and optimizations
					}								
				}	
				if(tid==1)
				{
					for(r=0; r<reps; r++)
					{
						for(i=0; i<elems; i=i+1)
						{		
							DT val = alpha * mem_t1[i];			
							memO0_t1[i] = val;
							memO1_t1[i] = val;
						}				
					 memO0_t1[0] = memO0_t1[0] * 0.1; // to avoid overflow and optimizations
					 memO1_t1[0] = memO1_t1[0] * 0.1; // to avoid overflow and optimizations
					}								
				}	
				
			}
			if(p==(samples-1))
				t_end = timer();			
		}	
		t_min = (t_end - t_start)/reps;		
		printf("%lf,%lf\n", ret_t0, ret_t1);
		SAVE_DATA("r: %d kb\tw: %dkb\ttime: %lf\n", (2*bytes)/1024, (4*bytes)/1024, t_min)
		printf("r: %d kb\tw: %dkb\ttime: %lf\n", (2*bytes)/1024, (4*bytes)/1024, t_min);
		if(mem_t0!=NULL) _mm_free(mem_t0);
		if(mem_t1!=NULL) _mm_free(mem_t1);
		if(memO0_t0!=NULL) _mm_free(memO0_t0);
		if(memO0_t1!=NULL) _mm_free(memO0_t1);
		if(memO1_t0!=NULL) _mm_free(memO1_t0);
		if(memO1_t1!=NULL) _mm_free(memO1_t1);

	}		
	DB(DB_LVL, SEPERATOR);			
	
	/* post-process */
	DB(DB_LVL, "post-process");
	DB(DB_LVL, SEPERATOR);
}
