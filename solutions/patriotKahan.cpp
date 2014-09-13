// c++ -std=c++1y -O2 patriotKahan.cpp
#ifdef ESC_SERVER
#include "api.h"
#endif

#include<cstdio>

float kernel(int maxl) {
   float tenth=0.1f;
   float t=0;
   long long n=0;
   float eps=0;
   while(n<maxl) {
     float a = tenth -eps;
     float s = t + a;
     eps = (s -t) -a;
     t = s;
     ++n;
     if (n<21 || n%36000==0) printf("%d %f %a\n",n,t,t);
   }

   float count = float(60*60*100*10);
   printf("\n\n%f %f %a\n\n",count,float(count*tenth),float(count*tenth));

   return t;
}

int main() {
#ifdef ESC_SERVER
  int seed = 500000*esc_start("iris.pd.infn.it:5202", "2", "1001", "aaa"); 
#else
  int seed = 1000000;
#endif
  float expected = 0.1f*seed;
  auto solution = kernel(seed);
  printf("\nexpected: %f",expected);
  printf(", solution: %f\n",solution);

#ifdef ESC_SERVER
  return esc_finish(&solution, 1, ESC_TYPE_FLOAT, ESC_ACCURACY_DEFAULT);
#else
  return expected == solution;
#endif
}


