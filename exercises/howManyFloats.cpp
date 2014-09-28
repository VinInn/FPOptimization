// c++ -Wall -std=c++1y -O2 $1
#ifdef ESC_SERVER
#include "api.h"
#endif

#include<cstdio>
#include<cstring>
#include<iostream>

int kernel(int num) {

  const float x = num;
  const float y = num+1;

  return 1;

}

int main() {
#ifdef ESC_SERVER
  int seed = esc_start("iris.pd.infn.it:5202", "2", "1001", "aaa"); 
#else
  int seed = 1000;
#endif
  auto solution = kernel(seed);
  printf("solution: %d\n",solution);

#ifdef ESC_SERVER
  return esc_finish(&solution, 1, ESC_TYPE_INT, ESC_ACCURACY_DEFAULT);
#else
  return 0;
#endif
}


