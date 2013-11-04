#include <time.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
#include <omp.h>
#include <malloc.h>
#include <immintrin.h>
#include <zmmintrin.h>
#include <assert.h>

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
	DT * memA_t0, *memA_t1, *memA_t2, *memA_t3;
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
	bytes_min = 1024, bytes_max = 1024*32; /* [1KB, 32KB] */
	elems_min = bytes_min/sizeof(DT), elems_max = bytes_max/sizeof(DT); /* the number of elements */
	reps = 	40000;

	DB(DB_LVL, SEPERATOR);
	
	/* omp environment */
  const int nthreads = argc > 1 ? atoi(argv[1]) : 4;
  fprintf(stderr , "nthreads= %d\n", nthreads);

	omp_set_num_threads(nthreads);

	/* iteration */
	DB(DB_LVL, "measurement");	
	for(elems=elems_min, bytes=bytes_min; elems<=elems_max; elems=elems+elems_min, bytes=bytes+bytes_min)
	{
		memA_t0 = (DT *)_mm_malloc(bytes_max, 64);
		memA_t1 = (DT *)_mm_malloc(bytes_max, 64);
		memA_t2 = (DT *)_mm_malloc(bytes_max, 64);
		memA_t3 = (DT *)_mm_malloc(bytes_max, 64);

		/* initialization a local space */
		fill(memA_t0, elems, 1.0);
		fill(memA_t1, elems, 2.0);
		fill(memA_t2, elems, 3.0);
		fill(memA_t3, elems, 4.0);
		
		/* measurement */
		t_min = 0.0f;
		c_min = 0.0f;
		DT ret_t0 = 0.0;		
		DT ret_t1 = 0.0;
		DT ret_t2 = 0.0;
		DT ret_t3 = 0.0;

#ifdef SAXPY2
#define Z _x
#else
#define Z _x
#endif

		for(p=0; p<samples; p++)
		{			
      __m512d *_x, *_y, *_z;
			#pragma omp parallel	private(_x,_y,_z) default(shared)
			{
        int tid;
				tid = omp_get_thread_num();
        switch(tid)
        {
          case 0:
            _x = (__m512d*)memA_t0;
            break;
          case 1:
            _x = (__m512d*)memA_t1;
            break;
          case 2:
            _x = (__m512d*)memA_t2;
            break;
          case 3:
            _x = (__m512d*)memA_t3;
            break;
          default:
            assert(0);
        }
#pragma omp barrier
        if(p==(samples-1))
          t_start = timer();	

        int r;
        for(r=0; r<reps; r++)
        {
          asm("#t0-beg");
#if 0  
          double *memO_t0 = (double*)Z;
          const double *memA_t0 = (double*)_x;
          const double *memB_t0 = (double*)_y;
#pragma vector aligned
          for(i=0; i<elems; i=i+1)
          {
            //ret_t0 += mem_t0[i];
            memO_t0[i] = alpha * memA_t0[i] + memB_t0[i];
          }				
          memO_t0[0] = memO_t0[0] * 0.1; // to avoid overflow and optimizations
#else
          const int cnts = elems >> 3;
          const __m512d  _a = _mm512_set1_pd(alpha);                           
          int ib;
          for (ib = 0; ib < cnts; ib += 8*8)
          { 
            Z[ib+8*0+0] = _mm512_mul_pd(_a,_x[ib+8*0+0]);
            Z[ib+8*0+1] = _mm512_mul_pd(_a,_x[ib+8*0+1]);
            Z[ib+8*0+2] = _mm512_mul_pd(_a,_x[ib+8*0+2]);
            Z[ib+8*0+3] = _mm512_mul_pd(_a,_x[ib+8*0+3]);
            Z[ib+8*0+4] = _mm512_mul_pd(_a,_x[ib+8*0+4]);
            Z[ib+8*0+5] = _mm512_mul_pd(_a,_x[ib+8*0+5]);
            Z[ib+8*0+6] = _mm512_mul_pd(_a,_x[ib+8*0+6]);
            Z[ib+8*0+7] = _mm512_mul_pd(_a,_x[ib+8*0+7]);

            Z[ib+8*1+0] = _mm512_mul_pd(_a,_x[ib+8*1+0]);
            Z[ib+8*1+1] = _mm512_mul_pd(_a,_x[ib+8*1+1]);
            Z[ib+8*1+2] = _mm512_mul_pd(_a,_x[ib+8*1+2]);
            Z[ib+8*1+3] = _mm512_mul_pd(_a,_x[ib+8*1+3]);
            Z[ib+8*1+4] = _mm512_mul_pd(_a,_x[ib+8*1+4]);
            Z[ib+8*1+5] = _mm512_mul_pd(_a,_x[ib+8*1+5]);
            Z[ib+8*1+6] = _mm512_mul_pd(_a,_x[ib+8*1+6]);
            Z[ib+8*1+7] = _mm512_mul_pd(_a,_x[ib+8*1+7]);

            Z[ib+8*2+0] = _mm512_mul_pd(_a,_x[ib+8*2+0]);
            Z[ib+8*2+1] = _mm512_mul_pd(_a,_x[ib+8*2+1]);
            Z[ib+8*2+2] = _mm512_mul_pd(_a,_x[ib+8*2+2]);
            Z[ib+8*2+3] = _mm512_mul_pd(_a,_x[ib+8*2+3]);
            Z[ib+8*2+4] = _mm512_mul_pd(_a,_x[ib+8*2+4]);
            Z[ib+8*2+5] = _mm512_mul_pd(_a,_x[ib+8*2+5]);
            Z[ib+8*2+6] = _mm512_mul_pd(_a,_x[ib+8*2+6]);
            Z[ib+8*2+7] = _mm512_mul_pd(_a,_x[ib+8*2+7]);

            Z[ib+8*3+0] = _mm512_mul_pd(_a,_x[ib+8*3+0]);
            Z[ib+8*3+1] = _mm512_mul_pd(_a,_x[ib+8*3+1]);
            Z[ib+8*3+2] = _mm512_mul_pd(_a,_x[ib+8*3+2]);
            Z[ib+8*3+3] = _mm512_mul_pd(_a,_x[ib+8*3+3]);
            Z[ib+8*3+4] = _mm512_mul_pd(_a,_x[ib+8*3+4]);
            Z[ib+8*3+5] = _mm512_mul_pd(_a,_x[ib+8*3+5]);
            Z[ib+8*3+6] = _mm512_mul_pd(_a,_x[ib+8*3+6]);
            Z[ib+8*3+7] = _mm512_mul_pd(_a,_x[ib+8*3+7]);

          } 
#endif
          asm("#t0-end");
        }								
			}
			if(p==(samples-1))
				t_end = timer();			
		}	
		t_min = (t_end - t_start)/reps;		
		printf("%lf,%lf,%lf,%lf\n", ret_t0, ret_t1, ret_t2, ret_t3);
		SAVE_DATA("%lf\t", 2*nthreads*bytes/t_min);
		printf("cbw: %lf\t elems= %d mem_tot= %d\n", 2*nthreads*bytes/t_min, elems/8, 2*elems*sizeof(DT)*nthreads);
		if(memA_t0!=NULL) _mm_free(memA_t0);
		if(memA_t1!=NULL) _mm_free(memA_t1);
		if(memA_t2!=NULL) _mm_free(memA_t2);
		if(memA_t3!=NULL) _mm_free(memA_t3);
	}		
	DB(DB_LVL, SEPERATOR);			
	
	/* post-process */
	DB(DB_LVL, "post-process");

	DB(DB_LVL, SEPERATOR);
}
