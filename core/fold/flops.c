#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "../../common/common.h"

typedef double DT;
#define MIC
//#undef MIC

#ifdef MIC
#include "immintrin.h"
#include "malloc.h"
#endif


DT random_number(DT max)
{
  return (DT) (((double)max)*rand()/(RAND_MAX+1.0));
}

/**
	array initiaization
	@param: mem- the array space
	@param: num- the number of elements
**/
void init(DT* mem, int num)
{
	int i;
	for(i=0; i<num; i++)
	{
		mem[i] = random_number(5.0);
	}
	return ;
}
#define STEP 8
#ifndef MIC
	#define MADD1_OP  s=v1-s*v2;
#else
	#define MADD1_OP  s=_mm512_fnmadd_pd(s, v2, v1); 
#endif

#define MADD1_MOP1  \
     MADD1_OP

#define MADD1_MOP2  \
     MADD1_OP MADD1_OP

#define MADD1_MOP4  \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP

#define MADD1_MOP8  \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP 

#define MADD1_MOP16  \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP

 	 

void mad11(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
    #pragma omp parallel for 
    for (gid = 0; gid<num; gid++)
    {
        register DT s = (DT)(0.999f);
	register DT v1 = vv1;
	register DT v2 = vv2;
        for (j=0; j<repeat; ++j) 
        {
		MADD1_MOP1
        }
        data[gid] = s;
    }
#else
	#pragma omp parallel for 
    for (gid = 0; gid<num; gid=gid+STEP)
    {       
	__m512d s = _mm512_set1_pd(0.999f);
	__m512d v1 = _mm512_set1_pd(vv1);
	__m512d v2 = _mm512_set1_pd(vv2);
        for (j=0; j<repeat; ++j) 
        {
            MADD1_MOP1
        }

	_mm512_store_pd(&(data[gid]), s);
    }
#endif
	
	return ;
}

void mad12(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
    #pragma omp parallel for 
    for (gid = 0; gid<num; gid++)
    {
        register DT s = (DT)(0.999f);
	register DT v1 = vv1;
	register DT v2 = vv2;
        for (j=0; j<repeat; ++j) 
        {
		MADD1_MOP2
        }
        data[gid] = s;
    }
#else
	#pragma omp parallel for 
    for (gid = 0; gid<num; gid=gid+STEP)
    {       
	__m512d s = _mm512_set1_pd(0.999f);
	__m512d v1 = _mm512_set1_pd(vv1);
	__m512d v2 = _mm512_set1_pd(vv2);
        for (j=0; j<repeat; ++j) 
        {
            MADD1_MOP2
        }

	_mm512_store_pd(&(data[gid]), s);
    }
#endif
	
	return ;
}


void mad14(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
    #pragma omp parallel for 
    for (gid = 0; gid<num; gid++)
    {
        register DT s = (DT)(0.999f);
	register DT v1 = vv1;
	register DT v2 = vv2;
        for (j=0; j<repeat; ++j) 
        {
		MADD1_MOP4
        }
        data[gid] = s;
    }
#else
	#pragma omp parallel for 
    for (gid = 0; gid<num; gid=gid+STEP)
    {       
	__m512d s = _mm512_set1_pd(0.999f);
	__m512d v1 = _mm512_set1_pd(vv1);
	__m512d v2 = _mm512_set1_pd(vv2);
        for (j=0; j<repeat; ++j) 
        {
            MADD1_MOP4
        }

	_mm512_store_pd(&(data[gid]), s);
    }
#endif
	
	return ;
}


void mad18(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
    #pragma omp parallel for 
    for (gid = 0; gid<num; gid++)
    {
        register DT s = (DT)(0.999f);
	register DT v1 = vv1;
	register DT v2 = vv2;
        for (j=0; j<repeat; ++j) 
        {
		MADD1_MOP8
        }
        data[gid] = s;
    }
#else
	#pragma omp parallel for 
    for (gid = 0; gid<num; gid=gid+STEP)
    {       
	__m512d s = _mm512_set1_pd(0.999f);
	__m512d v1 = _mm512_set1_pd(vv1);
	__m512d v2 = _mm512_set1_pd(vv2);
        for (j=0; j<repeat; ++j) 
        {
            MADD1_MOP8
        }

	_mm512_store_pd(&(data[gid]), s);
    }
#endif
	
	return ;
}


void mad116(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
    #pragma omp parallel for 
    for (gid = 0; gid<num; gid++)
    {
        register DT s = (DT)(0.999f);
	register DT v1 = vv1;
	register DT v2 = vv2;
        for (j=0; j<repeat; ++j) 
        {
		MADD1_MOP16
        }
        data[gid] = s;
    }
#else
	#pragma omp parallel for 
    for (gid = 0; gid<num; gid=gid+STEP)
    {       
	__m512d s = _mm512_set1_pd(0.999f);
	__m512d v1 = _mm512_set1_pd(vv1);
	__m512d v2 = _mm512_set1_pd(vv2);
        for (j=0; j<repeat; ++j) 
        {
            MADD1_MOP16
        }

	_mm512_store_pd(&(data[gid]), s);
    }
#endif
	
	return ;
}



int main(int argc, char** argv)
{
	double start_t, end_t, delta_t;
	double flopCount, gflop;
	// Allocate host memory
	int halfNumFloats = 4096*4096;
	int numFloats = 2*halfNumFloats;
	int repeat = 2000;

#ifndef MIC	
	DT * hostMem = (DT *)malloc(numFloats*sizeof(DT));
#else
	DT * hostMem = (DT *)_mm_malloc(numFloats*sizeof(DT), 64);
#endif
	// warm-up
	init(hostMem, numFloats);
	start_t = timer();	
	mad11(numFloats, hostMem, repeat*16, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 16;
	gflop = flopCount / delta_t;	
	//printf("%lf\t", gflop);

	
	// mad11
	init(hostMem, numFloats);
	start_t = timer();	
	mad11(numFloats, hostMem, repeat*16, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 16;
	gflop = flopCount / delta_t;	
	printf("%lf\t", gflop);

	// mad12
	init(hostMem, numFloats);
	start_t = timer();	
	mad12(numFloats, hostMem, repeat*8, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 16;
	gflop = flopCount / delta_t;	
	printf("%lf\t", gflop);

	// mad14
	init(hostMem, numFloats);
	start_t = timer();	
	mad14(numFloats, hostMem, repeat*4, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 16;
	gflop = flopCount / delta_t;	
	printf("%lf\t", gflop);

	// mad18
	init(hostMem, numFloats);
	start_t = timer();	
	mad18(numFloats, hostMem, repeat*2, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 16;
	gflop = flopCount / delta_t;	
	printf("%lf\t", gflop);

	// mad116
	init(hostMem, numFloats);
	start_t = timer();	
	mad116(numFloats, hostMem, repeat*1, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 16;
	gflop = flopCount / delta_t;	
	printf("%lf\t", gflop);	

#ifndef MIC	
	free(hostMem);
#else
	_mm_free(hostMem);
#endif	
	return 0;
}

