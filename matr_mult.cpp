//
//
//

#include "cstdio"

using namespace std;

typedef float T;
//template <class T>
void matr_mult(T const *A, T const *B, T *C, size_t N, size_t K, size_t M)
{
#if 1
#pragma ivdep
#pragma omp simd
#endif
    for(size_t i = 0 ; i != N ; ++i) {
        for (size_t j = 0 ; j != M ; ++j) {
            T s = 0;
            for(size_t k = 0 ; k != K ; ++k) {
                // A[i,k] * B[k,j]
                s += A[i * K + k] * B[k * M + j];
            }
            // C[i,j] = ...
            C[i*K + j] = s;
        }
    }
}

//template <class T>
void matr_mult_transposed(T const *A, T const *B, T *C, size_t N, size_t K, size_t M)
{
#if 1
#pragma ivdep
#pragma omp simd
#endif
    for(size_t i = 0 ; i != N ; ++i) {
        for (size_t j = 0 ; j != M ; ++j) {
            T s = 0;
            for(size_t k = 0 ; k != K ; ++k) {
                // A[i,k] * B[j, k]
                s += A[i * K + k] * B[k * M + j];
            }
            // C[i,j] = ...
            C[i*K + j] = s;
        }
    }
}

//template<class T>
void print_as_matr(T const *M, size_t rows, size_t colls, char const *title)
{
    if(title)
        printf("%s\n", title);
    if(rows * colls > 100) {
        printf("... too big\n");
        return;
    }
        
    for(size_t i = 0 ; i != rows ; ++i) {
        for(size_t j = 0 ; j != colls ; ++j) {
            printf("%g ", (double)M[i * colls + j]);
        }
        printf("\n");
    }
}

T *one(size_t n)
{
    T *data = new T[n];
    data += n;
    while(n--)
        *--data = (T)1;
    return data;
}

#include "timer.h"
int main()
{
    {
        const int N = 3, K = 3, M =3;
        
        float A[] = {1, 0, 0, 0, 2, 0, 0, 0, 3};
        print_as_matr(A, N, K, "A:");
        float B[] =  {1, 0, 0, 0, 1, 0, 0, 0, 1};
        print_as_matr(B, K, M, "B:");
        
        float C[N*M];

        Timer t;
        t.start();
        matr_mult(A, B, C, N, K, M);
        t.stop();
        print_as_matr(C, N, M, "C:");
        printf("Elapsed: %g sec.\n", t.elapsed());
    }
#if 1
    {
        int N = 2000, K = 2000, M =2000;
        
        float *A = one(N*K);
        print_as_matr(A, N, K, "A:");
        float *B = one(K*M);
        print_as_matr(B, K, M, "B:");
        
        float *C = new float[N*M];

        Timer t;
        t.start();
        matr_mult(A, B, C, N, K, M);
        t.stop();
        print_as_matr(C, N, M, "C:");
        printf("Elapsed: %g sec.\n", t.elapsed());

    }
#endif
}

// Local Variables:
// mode: c++
// c-basic-offset: 4
// tab-width: 4
// indent-tabs-mode: nil
// End:
