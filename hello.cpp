#include <cstdio>
#include <unistd.h>

int main() {
  char hostname[100];
  int ncpus;

  gethostname(hostname, sizeof(hostname));
  ncpus = sysconf(_SC_NPROCESSORS_ONLN);

  printf("Host %s has %d CPU(s)\n", hostname, ncpus);
}
