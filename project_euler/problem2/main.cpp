#include <iostream>

using namespace std;

  // scratch
  // 
  // F[n] = F[n-1] + F[n-2]
  // F[2n+1] = F[2n] + F[2n-1]
  // F[0] = A; F[1] = B
  // F[2] = A+B; F[3] = A+B + B = A+2B; F[4] = A+B + A+2B = 2A+3B
  // F[5] = A+2B + 2A+3B = 3A+5B; F[6] = 2A+3B + 3A+5B = 6A+8B
  // F[7] = 3A+5B + 6A+8B = 9A+13B; F[8] = 6A+8B + 9A+13B = 15A+21B
  // A: [1, 1, 2, 3, 6, 9, 15]; B: [1, 2, 3, 5, 8, 13, 21]
  // F[n] = F(1,1,n+2)*A + F(1,2,n+2)*B 
  // sum(F[even 0..=2]) = A+2B
  // sum(F[even 0..=4]) = A + A+B + 2A+3B = 4A+4B
  // sum(F[even 0..=6]) = 4A+4B + 6A+8B = 10A+12B
  // sum(F[even 0..=8]) = 4A+4B + 6A+8B + 15A+21B = 25A+33B 
  // 
  // [(A,0),(0,B),(A,B),(A,2B),(2A,3B),(3A,5B),(5A,8B)]
  // F(n) = F1(n)*A + F2(n)*B

/// calculate the next number in the fibonnaci sequence given
/// the last two numbers in the sequence `n1` and `n2`
int next_fibonnaci(int n1, int n2) {
  return n1+n2;
}

/// sum the the even terms in the fibonnaci sequence up to the `range`th term
int fib_sum_even(int n1, int n2, int range) {
  int sum = n2;
  int a = 1; b = 1;

  int n = a+b;
  for (int i=3; i<range; i++) {

  }

}



int main(void) {
  int n;
  cout << "Sum of multiples of 3 and 5 up to? ";
  cin >> n;
  cout << sum_of_mult_5_and_3(n) << std::endl;
}
