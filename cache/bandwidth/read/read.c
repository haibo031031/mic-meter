/**
	@ measure the time of moving (<)32KB data into registers
	& calculate the transfer rates
	@ 27/10/2013 by Jianbin Fang from Delft University of Technology
	@ Reference1: BenchITv6
	@ Reference2: Evghenii
**/

#include <stdio.h>
#include <malloc.h>
#include "../../../common/common.h"
/**
	to measure the overhead of timer.
**/
unsigned long long overhead(){
	unsigned long long ret;
       __asm__ __volatile__(
                 //first timestamp
                "rdtsc;"
                "shl $32,%%rdx;"
                "add %%rdx,%%rax;"
                "mov %%rax,%%rdx;"
                #ifdef FORCE_CPUID
                "mov $0, %%rax;"
                "cpuid;"
                #else
                //"mfence;"
		"lock;" 
		"addl $0,(%%rsp);"
                #endif
		";"
                #ifdef FORCE_CPUID
                "mov $0, %%rax;"
                "cpuid;"
                #else
		"lock;" 
		"addl $0,(%%rsp);"
                #endif
                "mov %%rdx,%%rbx;"
                "rdtsc;"
                "shl $32,%%rdx;"
                "add %%rdx,%%rax;"
                "sub %%rbx,%%rax;"
                : "=a" (ret)                
		: 	
                : "%rdx","%zmm0"
						);
		
	
	return ret;
}

/**
	@ use high-level program to use the buffer
**/
void runHL(void * buffer, int size){
	int elems = size/sizeof(double);
	int i;
	double res = 0.0;
	double * addr = (double *)buffer;
	for(i=0; i<elems; i++){
		res += addr[i];
	}
	printf("to move data from buffer to caches (%lf)\n", res);
}

/**
	@ load data from cache into registers
**/
void runLL(void * buffer, int size, double * perf){
	
	unsigned long long addr = (unsigned long long)buffer;	
	unsigned long long passes = 8;	
	
      /*
       * Input: addr -> RBX (pointer to the buffer)
       *        passes -> RCX
       * Output : RAX stop timestamp - start timestamp
       */
       __asm__ __volatile__(
                 //first timestamp
                "rdtsc;"
                "shl $32,%%rdx;"
                "add %%rdx,%%rax;"
                "mov %%rax,%%rdx;"
                #ifdef FORCE_CPUID
                "mov $0, %%rax;"
                "cpuid;"
                #else
                //"mfence;"
		"lock;" 
		"addl $0,(%%rsp);"
                #endif
                ".align 64;"
                "_work_loop_vmovapd_1:"
                "vmovapd 0(%%rbx), %%zmm0;"
                "vmovapd 64(%%rbx), %%zmm0;"
                "vmovapd 128(%%rbx), %%zmm0;"
                "vmovapd 192(%%rbx), %%zmm0;"
                "vmovapd 256(%%rbx), %%zmm0;"
                "vmovapd 320(%%rbx), %%zmm0;"
                "vmovapd 384(%%rbx), %%zmm0;"
                "vmovapd 448(%%rbx), %%zmm0;"
                "vmovapd 512(%%rbx), %%zmm0;"
                "vmovapd 576(%%rbx), %%zmm0;"
                "vmovapd 640(%%rbx), %%zmm0;"
                "vmovapd 704(%%rbx), %%zmm0;"
                "vmovapd 768(%%rbx), %%zmm0;"
                "vmovapd 832(%%rbx), %%zmm0;"
                "vmovapd 896(%%rbx), %%zmm0;"
                "vmovapd 960(%%rbx), %%zmm0;"
                "vmovapd (1024+0)(%%rbx), %%zmm0;"
                "vmovapd (1024+64)(%%rbx), %%zmm0;"
                "vmovapd (1024+128)(%%rbx), %%zmm0;"
                "vmovapd (1024+192)(%%rbx), %%zmm0;"
                "vmovapd (1024+256)(%%rbx), %%zmm0;"
                "vmovapd (1024+320)(%%rbx), %%zmm0;"
                "vmovapd (1024+384)(%%rbx), %%zmm0;"
                "vmovapd (1024+448)(%%rbx), %%zmm0;"
                "vmovapd (1024+512)(%%rbx), %%zmm0;"
                "vmovapd (1024+576)(%%rbx), %%zmm0;"
                "vmovapd (1024+640)(%%rbx), %%zmm0;"
                "vmovapd (1024+704)(%%rbx), %%zmm0;"
                "vmovapd (1024+768)(%%rbx), %%zmm0;"
                "vmovapd (1024+832)(%%rbx), %%zmm0;"
                "vmovapd (1024+896)(%%rbx), %%zmm0;"
                "vmovapd (1024+960)(%%rbx), %%zmm0;"
                "add $2048,%%rbx;"
                "sub $1,%%rcx;"
                "jnz _work_loop_vmovapd_1;"
                #ifdef FORCE_CPUID
                "mov $0, %%rax;"
                "cpuid;"
                #else
		"lock;" 
		"addl $0,(%%rsp);"
                #endif
                "mov %%rdx,%%rbx;"
                "rdtsc;"
                "shl $32,%%rdx;"
                "add %%rdx,%%rax;"
                "sub %%rbx,%%rax;"
                : "=a" (addr)
                : "b"(addr), "c" (passes)
                : "%rdx","%zmm0"
						);
		perf[0]=((double)(1024*16))/((double)((addr)-overhead()));
		printf("%llu\n", overhead());
	return ;
}

int main(int argc, char** argv){
	int size = 1024*16; // 16KB buffer
	double perf[2];
	void * buffer = _mm_malloc(size, ALIGN);
	
	// warm up (to move data into caches)
	runHL(buffer, size);
	runHL(buffer, size);	
	runHL(buffer, size);
	runHL(buffer, size);		
	runHL(buffer, size);				

	// run test 
	runLL(buffer, size, perf);
	runLL(buffer, size, perf);
	runLL(buffer, size, perf);
	runLL(buffer, size, perf);
	runLL(buffer, size, perf);

	// print results
	printf("bandwidth: %lf\n", perf[0]);
	if(buffer!=NULL) _mm_free(buffer);	
	return 1;
}
