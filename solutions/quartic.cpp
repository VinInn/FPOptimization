#include <cmath>

float a[1024],b[1024],c[1024], x1[1024],x2[1024];

void solver() {

   for (int i=0; i!=1024; ++i) {
    double det = double(b[i])*double(b[i])-4*double(a[i])*double(c[i]);
    float q = -0.5f*(std::copysign(std::sqrt(float(det)),b[i])+b[i]);
    x1[i] = q/a[i];
    x2[i] = c[i]/q;
   }

}

void naiveSolver() {

   for (int i=0; i!=1024; ++i) {
    float det = b[i]*b[i]-4.f*a[i]*c[i];
    x1[i] = (-b[i]-std::sqrt(det))/(2.f*a[i]);
    x2[i] = (-b[i]+std::sqrt(det))/(2.f*a[i]);
   }

}

#include<iostream>
#include<algorithm>
#include <x86intrin.h>

inline unsigned long long refClock() {
  unsigned int taux=0;
  return __rdtscp(&taux);
}

double driver(int seed) {
   c[0]=seed; a[0] = 1.; b[0]=2.*seed;
   for (int i=1; i!=1024; ++i) {
      c[i] = -c[i-1]-std::copysign(seed,c[i-1]);
      a[i] = i;
      b[i] = (i%2) ? 2.f*std::sqrt(std::abs(a[i]*c[i])) + 0.001f : 16*seed*seed*i*i;
   }

  long long tim = -refClock();
  naiveSolver();
  // solver();
  tim += refClock();
  std::cout << "time " << tim << std::endl;
  double ret=0;
  for (int i=0; i!=1024; ++i)
    ret+= std::min(std::abs(x1[i]),std::abs(x2[i]));
  return ret;
}

#include<iostream>
int main() {

   int seed=2;

   double solution = driver(seed);

   std::cout << "solution = " << solution << std::endl;

   return 0;
};
