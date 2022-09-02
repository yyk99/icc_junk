#include <cstdio>
#if __has_include (<unistd.h>)
#   include <unistd.h>
#else
#   include <winsock.h>
#   pragma comment(lib, "ws2_32.lib")
#endif

#include <thread>

int main() 
{
#if _WIN32
    int iResult;
    WSADATA wsaData;

    // Initialize Winsock
    iResult = WSAStartup( MAKEWORD( 2, 2 ), &wsaData );
    if ( iResult != 0 ) {
        printf( "WSAStartup failed: %d\n", iResult );
        return 1;
    }
#endif

  char hostname[100];
  int ncpus;

  gethostname(hostname, sizeof(hostname));
  ncpus = std::thread::hardware_concurrency();

  printf("Host %s has %d CPU(s)\n", hostname, ncpus);
}
