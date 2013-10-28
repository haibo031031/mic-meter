/**
	This microbenchmark is used to test the maximum achievable flops
	Reference: https://github.com/vetter/shoc-mic
	We use intrinsics to explore its compute capability.
	26/10/2013 by Jianbin Fang at Delft University of Technology
**/

#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "../../Common/common.h"


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
	#define MUL1_OP s=s*s*v; 
	#define MUL2_OP   MUL1_OP s2=s2*s2*v;
	#define MADD1_OP  s=v1-s*v2;
	#define MADD2_OP  MADD1_OP s2=v1-s2*v2;
#else
	#define MUL1_OP   s = _mm512_mul_pd(_mm512_mul_pd(s,s), v);
	#define MUL2_OP   MUL1_OP s2=_mm512_mul_pd(_mm512_mul_pd(s2, s2), v);
	#define MADD1_OP  s=_mm512_fnmadd_pd(s, v2, v1); 
	#define MADD2_OP  MADD1_OP s2=_mm512_fnmadd_pd(s2, v2, v1);
#endif

#define MUL1_MOP20  \
     MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP \
     MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP MUL1_OP \
     MUL1_OP MUL1_OP

#define MUL2_MOP20  \
     MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP \
     MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP MUL2_OP \
     MUL2_OP MUL2_OP

#define MADD1_MOP20  \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP	 
	 
#define MADD2_MOP20  \
     MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP \
     MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP MADD2_OP \
     MADD2_OP MADD2_OP MADD2_OP MADD2_OP

/**
	multiplication with one instruction stream
**/	 
void mul1(int num, DT* data, int repeat, DT vv)
{
	int gid, j;
#ifndef MIC
	#pragma omp parallel for 
	for (gid = 0; gid<num; gid++)
	{
		register DT s = (DT)(0.999f);
		register DT v = vv;
		for (j=0; j<repeat; ++j) 
		{
			MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20
			MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20
		}
		data[gid] = s;
    	}
#else
	#pragma omp parallel for 
	for (gid = 0; gid<num; gid=gid+STEP)
	{       
		__m512d s = _mm512_set1_pd(0.999f);
		__m512d v = _mm512_set1_pd(vv);
		for (j=0; j<repeat; ++j) 
		{
			MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20
			MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20 MUL1_MOP20
		}
		_mm512_store_pd(&(data[gid]), s);
	}
#endif

	return ;
}

/**
	multiplication with two instruction streams
**/	 
void mul2(int num, DT* data, int repeat, DT vv)
{
	int gid, j;
#ifndef MIC
	#pragma omp parallel for 
	for (gid = 0; gid<num; gid++)
	{
		register DT s = (DT)(0.999f);
		register DT s2 = s-0.0001f;
		register DT v = vv;
		for (j=0; j<repeat; ++j) 
		{
			MUL2_MOP20 MUL2_MOP20 MUL2_MOP20 MUL2_MOP20 MUL2_MOP20
		}
		data[gid] = s+s2;
    	}
#else
	#pragma omp parallel for 
	for (gid = 0; gid<num; gid=gid+STEP)
	{       
		__m512d s = _mm512_set1_pd(0.999f);
		__m512d s2 = _mm512_sub_pd(s, _mm512_set1_pd(0.0001f));
		__m512d v = _mm512_set1_pd(vv);
		for (j=0; j<repeat; ++j) 
		{
			MUL2_MOP20 MUL2_MOP20 MUL2_MOP20 MUL2_MOP20 MUL2_MOP20
		}
		_mm512_store_pd(&(data[gid]), _mm512_add_pd(s, s2));
	}
#endif
	
	return ;
}

/**
	multiply-and-add with one instruction stream
**/	 
void mad1(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
	#pragma omp parallel for 
	for(gid = 0; gid<num; gid++)
	{
		register DT s = (DT)(0.999f);
		register DT v1 = vv1;
		register DT v2 = vv2;
		for (j=0; j<repeat; ++j) 
		{
			MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 
			MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 
			MADD1_MOP20 MADD1_MOP20
		}
		data[gid] = s;
    }
#else
	#pragma omp parallel for 
	for(gid = 0; gid<num; gid=gid+STEP)
	{       
		__m512d s = _mm512_set1_pd(0.999f);
		__m512d v1 = _mm512_set1_pd(vv1);
		__m512d v2 = _mm512_set1_pd(vv2);
		for(j=0; j<repeat; ++j) 
		{
			MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 
			MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 
			MADD1_MOP20 MADD1_MOP20
        	}
		_mm512_store_pd(&(data[gid]), s);
	}
#endif
	
	return ;
}

/**
	multiply-and-add with 2 instruction streams
**/	 
void mad2(int num, DT* data, int repeat, DT vv1, DT vv2)
{
	int gid, j;
#ifndef MIC
	#pragma omp parallel for 
	for(gid = 0; gid<num; gid++)
	{
		register DT s = (DT)data[gid];
		register DT s2 = 10.0 - s;
		register DT v1 = vv1;
		register DT v2 = vv2;
		for(j=0; j<repeat; ++j) 
		{
			MADD2_MOP20 MADD2_MOP20 MADD2_MOP20 
			MADD2_MOP20 MADD2_MOP20 MADD2_MOP20
		}
		data[gid] = s+s2;
	}
#else
	#pragma omp parallel for 
    for(gid = 0; gid<num; gid=gid+STEP)
    {       
		__m512d s = _mm512_load_pd(&(data[gid]));
		__m512d s2 = _mm512_sub_pd(_mm512_set1_pd(10.0f),s);
		__m512d v1 = _mm512_set1_pd(vv1);
		__m512d v2 = _mm512_set1_pd(vv2);
		for(j=0; j<repeat; ++j) 
		{
			MADD2_MOP20 MADD2_MOP20 MADD2_MOP20 
            	MADD2_MOP20 MADD2_MOP20 MADD2_MOP20
		}
		_mm512_store_pd(&(data[gid]), _mm512_add_pd(s, s2));
    }
#endif
	
	return ;
}

/**
	main entry
**/
int main(int argc, char** argv)
{
	double start_t, end_t, delta_t;
	double flopCount, gflop;
	// Allocate host memory
	int halfNumFloats = 4096*4096;
	int numFloats = 2*halfNumFloats;
	int repeat = 200;
#ifndef MIC	
	DT * hostMem = (DT *)malloc(numFloats*sizeof(DT));
#else
	DT * hostMem = (DT *)_mm_malloc(numFloats*sizeof(DT), 64);
#endif
	// mul1
	init(hostMem, numFloats);
	start_t = timer();
	
	mul1(numFloats, hostMem, repeat, 1.01);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 200;
	gflop = flopCount / delta_t;
	printf("%lf\t", gflop);
	
	// mul2
	init(hostMem, numFloats);
	start_t = timer();	
	mul2(numFloats, hostMem, repeat, 1.01);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 200;
	gflop = flopCount / delta_t;
	printf("%lf\t", gflop);
	
	// mad1
	init(hostMem, numFloats);
	start_t = timer();	
	mad1(numFloats, hostMem, repeat, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 240;
	gflop = flopCount / delta_t;
	printf("%lf\t", gflop);

	// mad2
	init(hostMem, numFloats);
	start_t = timer();	
	mad2(numFloats, hostMem, repeat, 10.0, 0.9899);	
	end_t = timer();
	delta_t = end_t - start_t;
	flopCount = (double)numFloats * 2.0 * repeat * 240;
	gflop = flopCount / delta_t;
	printf("%lf\t", gflop);
	
#ifndef MIC	
	free(hostMem);
#else
	_mm_free(hostMem);
#endif	
	return 0;
}

