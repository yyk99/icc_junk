//
//
//

double MyFunction(int n)
{
  double A[n], B[n];

  for (int i = 0 ; i < n ; ++i)
    A[i] = 1.0;
  
  for (int i = 0 ; i < n ; ++i)
    B[i] = 1.0;

  for (int i = 0 ; i < n ; ++i) {
    A[i] += B[i];
  }

  return A[2];
}
