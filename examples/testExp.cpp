#include "approx_vexp.h"


#include<cstdio>
#include<cstdlib>
#include<iostream>

typedef float __attribute__( ( vector_size( 16 ) ) ) float32x4_t;


float32x4_t myExp(float32x4_t vx) {
  return approx_expf<decltype(vx),6>(vx);
}


int main() {


  float x = 0.15;
  auto y1 = approx_expf<float,6>(x);
  auto y2 = approx_expf<float,6>(-x);

  std::cout << x << ' ' << y1 << ' ' << y2 << std::endl;


  float32x4_t vx = { 0.15, -0.15, 2.1, -2.1};

  auto yv = approx_expf<decltype(vx),6>(vx);
  
  std::cout << yv[0] << ' '  << yv[1] << ' ' << yv[2] << ' ' << yv[3] << std::endl;

  return 0;

}
