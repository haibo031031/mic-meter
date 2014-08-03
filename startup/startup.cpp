#include <stdio.h>
#include <sys/time.h>

int main(int argc, char** argv) {

	struct timeval start;
	struct timeval stop;
	unsigned long elapsed;

  gettimeofday(&start,NULL); 

#pragma offload target(mic)
{
	// Doing nothing
}

	gettimeofday(&stop,NULL);

	elapsed = 1000000 * (stop.tv_sec - start.tv_sec);
	elapsed += stop.tv_usec - start.tv_usec;

	printf("start-up time (ms): %f\n", elapsed/1000.);

	return 1;
}
