/*
**  PROGRAM: Mandelbrot area
**
**  PURPOSE: Program to compute the area of a  Mandelbrot set.
**           Correct answer should be around 1.510659.
**           WARNING: this program may contain errors
**
**  USAGE:   Program runs without input ... just run the executable
**            
**  HISTORY: Written:  (Mark Bull, August 2011).
**           Changed "comples" to "d_comples" to avoid collsion with 
**           math.h complex type (Tim Mattson, September 2011)
*/

#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <omp.h>
#include <complex>

# define NPOINTS 1024
# define MAXITER 1024


#include "NativeVector.h"

#include<iostream>


// using FLOAT = float;

using FLOAT = NativeVector<float>;
constexpr int vsize = sizeof(FLOAT)/sizeof(float);

using Float = FLOAT;


using d_complex = std::complex<FLOAT>;

void testpoint(d_complex);



int numoutside = 0;

float driver(int seed){
  std::cout << "Vector size " << vsize << std::endl;


  constexpr FLOAT eps  =  nativeVector::zero<NativeVector<float>>() + 1.0e-5f;
  //  std::cout << eps << std::endl;


//   Loop over grid of points in the complex plane which contains the Mandelbrot set,
//   testing each point to see whether it is inside or outside the set.

  FLOAT index;
 
   for (int i=0; i<NPOINTS; ++i) {
     for (int i=0; i<vsize; ++i) index[i]=float(i);
     Float r = -2.0f+2.5f*(float)(i)/(float)(NPOINTS)+eps;
     // std::cout << c.r << std::endl;
     for (int j=0; j<NPOINTS; j+=vsize) {
       Float im = eps + 1.125f*index/(float)(NPOINTS);
       d_complex c(r,im);
       testpoint(c);
       index += float(vsize);
     }
   }

// Calculate area of set and error estimate and output the results
   
   auto area=2.0f*2.5f*1.125f*(float)(NPOINTS*NPOINTS-numoutside)/(float)(NPOINTS*NPOINTS);
   auto error=area/(float)NPOINTS;

   printf("Area of Mandlebrot set = %12.8f +/- %12.8f\n",area,error);
   printf("Correct answer should be around 1.510659\n");

   return area;
}


void testpoint(d_complex c){

// Does the iteration z=z*z+c, until |z| > 2 when point is known to be outside set
// If loop count reaches MAXITER, point is considered to be inside the set

// careful with inf and nan!


  d_complex z;
  int iter;

  // std::cout << c.r << ' ' << c.i << std::endl;

  z=c;
  auto out = std::norm(z) > 4.0f;
  for (iter=0; iter<MAXITER; ++iter){
    z = z*z+c;
    auto lout = std::norm(z) > 4.0f;
    out |= lout;
    if (nativeVector::all(out)) break;
  }
 
  // std::cout << (z.r*z.r+z.i*z.i) << std::endl;


  for (int i=0; i<vsize; ++i) if (out[i]) numoutside++;
  

}


#ifdef ESC_SERVER
#include "libesc/libesc_api.h"
#endif

#include<iostream>
int main() {

#ifdef ESC_SERVER
  int seed = esc_start_auto(); 
#else
  int seed=2;
#endif

    auto solution = driver(seed);

   std::cout << "solution = " << solution << std::endl;

#ifdef ESC_SERVER
  return esc_finish(&solution, 1, ESC_TYPE_FLOAT, 0.0015);
#else
   return 0;
#endif
};
