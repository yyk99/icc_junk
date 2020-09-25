//
//
//

#include "timer.h"

#include <iostream>
#include <vector>
#include <iterator>
#include <algorithm>

using namespace std;

template <class T>
void matr_mult(T const *A, T const *B, T *C, size_t N, size_t K, size_t M)
{
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

template<class T>
void print_as_matr(vector<T> const &M, size_t rows, size_t colls, string title)
{
    if(!title.empty())
        cout << title << endl;
    if(rows * colls > 100) {
        cout << "... too big\n";
        return;
    }
        
    for(size_t i = 0 ; i != rows ; ++i) {
        auto pos = M.begin() + i * colls;
        copy(pos, pos + colls, ostream_iterator<T>(cout, " "));
        cout << endl;
    }
}

int main()
{
    {
        int N = 1000, K = 1000, M =1000;
        
        vector<float> A(N*K, 1);
        print_as_matr(A, N, K, "A:");
        vector<float> B(K*M, 1);
        print_as_matr(B, K, M, "B:");
        
        vector<float> C(N*M);

        Timer t;
        t.start();
        matr_mult(A.data(), B.data(), C.data(), N, K, M);
        t.stop();
        print_as_matr(C, N, M, "C:");
        cout << "Elapsed: " << t.elapsed() << "sec.\n";

    }
}

// Local Variables:
// mode: c++
// c-basic-offset: 4
// tab-width: 4
// indent-tabs-mode: nil
// End:
