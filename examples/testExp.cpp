/*
 * compile with
 * c++ -std=c++1y -Ofast -I../include testExp.cpp -Wall -S -fabi-version=0 -o test_exp.s_all -DFATLIB
 */

#include "approx_vexp.h"


#include<cstdio>
#include<cstdlib>
#include<iostream>

typedef float __attribute__( ( vector_size( 16 ) ) ) float32x4_t;
typedef float __attribute__( ( vector_size( 32 ) ) ) float32x8_t;
typedef float __attribute__( ( vector_size( 64 ) ) ) float32x16_t;

// namespace {
#ifdef FMA
#define fma true
// constexpr bool fma=true;
#else
#define fma false
  // constexpr bool fma=false;
#endif
//}

float32x4_t __attribute__ ((target ("default")))
 myExp(float32x4_t vx) {
  return approx_expf<decltype(vx),6,fma>(vx);
}


float32x8_t  __attribute__ ((target ("default"))) myExp(float32x8_t vx) {
  return approx_expf<decltype(vx),6,fma>(vx);
}

float32x16_t __attribute__ ((target ("default"))) myExp(float32x16_t vx)  {
  return approx_expf<decltype(vx),6,fma>(vx);
}


#ifdef FATLIB

float32x4_t __attribute__ ((__target__ ("arch=nehalem")))
myExp(float32x4_t vx) {
  return approx_expf<decltype(vx),6,false>(vx);
}

float32x4_t __attribute__ ((__target__ ("arch=haswell")))
myExp(float32x4_t vx) {
  return approx_expf<decltype(vx),6,true>(vx);
}

float32x4_t __attribute__ ((__target__ ("arch=bdver1")))
myExp(float32x4_t vx) {
  return approx_expf<decltype(vx),6,true>(vx);
}

float32x4_t __attribute__ ((__target__ ("avx512f")))
myExp(float32x4_t vx) {
  return approx_expf<decltype(vx),6,true>(vx);
}


float32x8_t __attribute__ ((target ("arch=haswell")))  myExp(float32x8_t vx) {
  return approx_expf<decltype(vx),6,true>(vx);
}

float32x8_t  __attribute__ ((target ("avx512f"))) myExp(float32x8_t vx) {
  return approx_expf<decltype(vx),6,true>(vx);
}


float32x16_t __attribute__ ((target ("avx512f")))  myExp(float32x16_t vx) {
  return approx_expf<decltype(vx),6, true>(vx);
}



#endif


int main() {


  float x = 0.15;
  auto y1 = approx_expf<float,6,fma>(x);
  auto y2 = approx_expf<float,6,fma>(-x);

  std::cout << x << ' ' << y1 << ' ' << y2 << std::endl;


  float32x4_t vx = { 0.15, -0.15, 2.1, -2.1};

  auto yv = approx_expf<decltype(vx),6,fma>(vx);
  
  std::cout << yv[0] << ' '  << yv[1] << ' ' << yv[2] << ' ' << yv[3] << std::endl;

  return 0;

}
