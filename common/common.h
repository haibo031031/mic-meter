#include <time.h>

/**
	timer (ns)
**/
double timer()
{
	long t_val = 0;
	struct timespec ts;
	clock_gettime(CLOCK_REALTIME,&ts);
	t_val = ts.tv_sec * 1e+9 + ts.tv_nsec;
	return (double)t_val;	
}

//                       TSCTest.cpp                    © 2010-12-25 Agner Fog
//
// Test program to measure how many clock cycles a little piece of code takes.
// Author: Agner Fog
// Created date:  2006-06-01
// Last modified: 2011-08-15
// URL: www.agner.org/optimize/testp.zip
//
// The program will execute the code to test NUMTESTS times and then print
// out a list of clock counts.
//
// The project consists only of this file
// 
// Instructions:
// Insert the code to test at the place marked "### Test code here ###"
// Compile and link for console mode under Windows, Linux or Mac OS X 
// on x86 platform, 32 or 64 bits.
//
// © 2005-2011 GNU General Public License www.gnu.org/licenses
//////////////////////////////////////////////////////////////////////////////

#include <stdio.h>

// ###################### DEFINE CONSTANTS ######################

// set number of times to run test
const int NUMTESTS = 20;

// any declarations that your test code needs may go here:
int xx = 0;

// ###################### END DEFINE CONSTANTS ######################

// define type int64_t for 64 bit integer
#if defined(__GNUC__) || (defined(_MSC_VER) && _MSC_VER >= 1600)
  // Compilers supporting C99 or C++0x have stdint.h defining integer types
  #include <stdint.h>
  #define INT64_SUPPORTED // Remove this if the compiler doesn't support 64-bit integers
#elif defined(_MSC_VER)
  // Older Microsoft compilers have their own definition
  typedef __int64 int64_t;
#else
  // This works with many compilers
  typedef long long int64_t;
#endif

// Define ReadTSC function
#ifdef USE_ALIB    // use alibXXX.lib
// for compilers with insufficient inline assembly support, use external
// library for function ReadTSC()
#include "alib.h"

#else
// for compilers that understand the inline assembly code you can define
// the function ReadTSC() here:

// Read time stamp counter
// The return value is the internal clock count
int64_t ReadTSC() {
   unsigned reslo, reshi;                   // store 64 bit result here
   
   #if defined(__GNUC__) && !defined(__INTEL_COMPILER)
   // Inline assembly in AT&T syntax
      __asm__ __volatile__  (               // serialize (save ebx)
      "xorl %%eax,%%eax \n cpuid \n"
       ::: "%eax", "%ebx", "%ecx", "%edx");
      __asm__ __volatile__  (               // read TSC, store edx:eax in res
      "rdtsc\n"
       : "=a" (reslo), "=d" (reshi) );
      __asm__ __volatile__  (               // serialize again
      "xorl %%eax,%%eax \n cpuid \n"
       ::: "%eax", "%ebx", "%ecx", "%edx");
   #else
   // Inline assembly in MASM syntax
      __asm {
         xor eax, eax
         cpuid                              // serialize
         rdtsc                              // read TSC
         mov dword ptr reslo, eax           // store low dword in res[0]
         mov dword ptr reshi, edx           // store high dword in res[1]
         xor eax, eax
         cpuid                              // serialize again
      };
   #endif   // __GNUC__
   
   return ((int64_t)reshi << 32) | reslo;   // return result
}

#endif   // USE_ALIB


