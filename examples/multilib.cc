typedef float __attribute__( ( vector_size( 16 ) ) ) float32x4_t;
typedef float __attribute__( ( vector_size( 32 ) ) ) float32x8_t;
typedef float __attribute__( ( vector_size( 64 ) ) ) float32x16_t;



float //__attribute__ ((__target__ ("default")))
mySum(float vx, float vy) {
  return vx+vy;
}


float __attribute__ ((__target__ ("sse3")))
mySum_3(float vx, float vy) {
  return vx+vy;
}


float __attribute__ ((__target__ ("arch=nehalem")))
mySum_4(float vx, float vy) {
  return vx+vy;
}

float __attribute__ ((__target__ ("fma")))
mySum_fma(float vx, float vy) {
  return vx+vy;
}


float __attribute__ ((__target__ ("avx512f")))
mySum_512(float vx, float vy) {
  return vx+vy;
}


float32x4_t __attribute__ ((__target__ ("default")))
mySum(float32x4_t vx, float32x4_t vy) {
  return vx+vy;
}

float32x4_t __attribute__ ((__target__ ("sse3")))
mySum_3(float32x4_t vx, float32x4_t vy) {
  return vx+vy;
}

float32x4_t __attribute__ ((__target__ ("arch=nehalem")))
mySum_4(float32x4_t vx, float32x4_t vy) {
  return vx+vy;
}

float32x4_t __attribute__ ((__target__ ("arch=haswell")))
mySum(float32x4_t vx, float32x4_t vy) {
  return vx+vy;
}

float32x4_t __attribute__ ((__target__ ("arch=bdver1")))
mySum_amd(float32x4_t vx, float32x4_t vy) {
  return vx+vy;
}


float32x4_t __attribute__ ((__target__ ("avx512f")))
mySum_512(float32x4_t vx, float32x4_t vy) {
  return vx+vy;
}




float32x8_t __attribute__ ((__target__ ("arch=haswell")))  
mySum_avx2(float32x8_t vx, float32x8_t vy) {
  return vx+vy;
}

float32x8_t  __attribute__ ((__target__ ("avx512f"))) 
mySum_512(float32x8_t vx, float32x8_t vy) {
  return vx+vy;
}



/*
float32x16_t  __attribute__ ((__target__ ("sse3"))) 
mySum(float32x16_t vx, float32x16_t vy) {
  return vx+vy;
}
*/

/*
float32x16_t  __attribute__ ((__target__ ("avx512f"))) 
mySum(float32x16_t vx, float32x16_t vy) {
  return vx+vy;
}
*/



int main() {

  float a=1, b=-1;
  float c= mySum(a,b);

  float32x4_t x{0,1,2,3};
  float32x4_t y = x+1;

  float32x4_t z = mySum(x,y);

  return c*z[0]>2;
}
