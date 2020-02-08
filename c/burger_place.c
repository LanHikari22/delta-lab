#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

//thread ID for each thread
void *example_thread(void *x){
	printf("here\n");
	pthread_t id = pthread_self(); 
	printf("thread %d\n", pthread_self());
	pthread_exit(0);
}

int main(int argc, char* argv[]) {
  
  pthread_t customer, burger_cook, fryer;
  
  pthread_create(&customer, NULL, example_thread, NULL);
  pthread_create(&burger_cook, NULL, example_thread, NULL);
  pthread_create(&fryer, NULL, example_thread, NULL);
  exit(0); 
  
}
