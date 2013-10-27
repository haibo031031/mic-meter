#include <time.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>

#define DB_LVL 0
#define DB(n,info) {if(n!=0) printf("DB INFO:: %s\n",info);}
#define DT unsigned long /* data type */

#define SAVE_DATA(...) {FILE *fp=fopen("raw.dat", "a"); \
						fprintf(fp, __VA_ARGS__); \
						fclose(fp);}

#define ONE_KB 1024
#define ELE_OF_ONE_KB ONE_KB/sizeof(DT) 
#define CPU_FREQ 2.66 /* cpu frequency */

#ifndef NS_TIMER
#define NS_TIMER // use the timers in nano-second granularity
#endif
#ifndef US_TIMER
//#define US_TIMER  
#endif

#define SEPERATOR "-----------------------------------------------------"


/**
	global variables
**/
double timer_overhead = 0.0f;
double timer_granu = 0.0f;

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
//#ifdef NS_TIMER	 // default setting
	struct timespec ts;
	clock_gettime(CLOCK_REALTIME,&ts);
	t_val = ts.tv_sec * 1e+9 + ts.tv_nsec;
//#endif

//#ifdef US_TIMER
  //struct timeval t;
  //gettimeofday(&t,NULL);
  //t_val = t.tv_sec * 1e+6 + t.tv_usec;
//#endif
	
	return (double)t_val;	
}

/**
	jump around
**/
#define ONE {ptr=(void **) *ptr;}
#define TEN ONE ONE ONE ONE ONE ONE ONE ONE ONE ONE
#define HUN TEN TEN TEN TEN TEN TEN TEN TEN TEN TEN
#define THO HUN HUN HUN HUN HUN HUN HUN HUN HUN HUN


void * jump_begin_to_end(void * mem, long numjumps)
{
	long a, jumps;
	void ** ptr;
	ptr = (void **)mem;
	jumps = numjumps/100;
	/* jumping... */
	for(a=0; a<jumps; a=a+1)	
	{
		HUN
	}
	return (void *)ptr;
}


/** creates a memory are that is strided linked
 *  @param mem     the memory area to be used
 *  @param b  the number of bytes that should be used
 *  @param s  the stride in bytes
 */
void make_linked_memory(void *mem, long b, long s) {

   void **ptr;
   long a, elems, ts;
  
   elems = b/sizeof(void *);
   ts = s/sizeof(void*);
   ptr = (void **)mem;
   
   for (a=0; a<elems; a=a+ts)
   {
	 if(a>=(elems-ts))
	 {
		// link the last element to the first element
		*ptr = (void*)mem;		
	 }
	 else
	 {
		*ptr = (void *)(ptr+ts); // content
		ptr += ts;   //address		
	 }
   }
   return ;
}
/**
	save the results
	@param res: the array to be saved
	@param s:	the number of elements
**/
void save_results(long * res, long s){
	long i;
	FILE *fp = fopen("tmp.dump", "a");
	for(i=0; i<s; i++)
	{
		fprintf(fp, "%ld\t", res[i]);
	}	
	fclose(fp);
	return ;
}

/**
	benchmark entry
**/
int main(int argc, char** argv)
{
	/* variable declaration */
	DB(DB_LVL, "declaration");
	void * mem; 
	long array_min, array_max;	 /* in bytes */
	long stride_min, stride_max; /* in bytes */
	long samples, b, s, p;
	long num_of_jumps;
	double t_start, t_end;	
	double t_min, c_min;	
	DB(DB_LVL, SEPERATOR);
	
	/* initialization */
	DB(DB_LVL, "intialization");
	array_min = 16*1024, array_max = 8*1024*1024;	
	stride_min = 8, stride_max = 524288; 	
	num_of_jumps = 4000000;	
	samples = 3;
	mem = (void *)malloc(array_max);
	DB(DB_LVL, SEPERATOR);	
			
	/* iteration */
	DB(DB_LVL, "measurement");	
	long * ret = NULL;
	for(b=array_min; b<=array_max; b*=2) // foreach array size
	{
		printf("%d\t", b);
		SAVE_DATA("%ld\t", b)
		for(s=stride_min; s<=stride_max; s=s*2) // foreach stride
		{			
			if(2*s<=b) // to meet the constralong
			{
				/* make linked memory */
				make_linked_memory(mem, b, s);
				DB(DB_LVL, "make linked memory\n");
			
				/* measurement */
				t_min = 0.0f;
				c_min = 0.0f;
				for(p=0; p<samples; p++)
				{
					t_start = timer();	
					ret = (long *)jump_begin_to_end(mem, num_of_jumps);
					t_end = timer();			
					if(p==(samples-1))
						t_min = (t_end - t_start)/(double)num_of_jumps;
				}
				save_results(ret, 1); // save results to avoid the aggressive optimizations
				printf("%lf\t", t_min);		
				SAVE_DATA("%lf\t", t_min)
			}
		}	
		printf("\n");
		SAVE_DATA("\n");
	}
	DB(DB_LVL, SEPERATOR);			
	
	/* post-process */
	DB(DB_LVL, "post-process");
	if(mem!=NULL)
	{
		free(mem);
	}
	DB(DB_LVL, SEPERATOR);
}
