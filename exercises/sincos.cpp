#include<iostream>
#include<cmath>
#include<random>
#include<cstdio>
#include<array>
#include <x86intrin.h>

inline unsigned long long refClock() {
  unsigned int taux=0;
  return __rdtscp(&taux);
}


inline float sinf0( float x ) {
  
  float z = x * x;
  
  return
    (((-1.9515295891E-4f * z
       + 8.3321608736E-3f) * z
      - 1.6666654611E-1f) * z * x)
    + x;
  
}

inline float sinf1( float xx ) {
  

  constexpr float PIO4 = 0.7853981633974483096;

  auto x = (xx<PIO4) ? xx : xx-PIO4;

  float z = x * x;
  
  return (xx<PIO4) ?

    (((-1.9515295891E-4f * z
       + 8.3321608736E-3f) * z
      - 1.6666654611E-1f) * z * x)
    + x
    
    :  ((  2.443315711809948E-005f * z
	   - 1.388731625493765E-003f) * z
	+ 4.166664568298827E-002f) * z * z
    - 0.5f * z + 1.0f;
  
}


// only for  -45deg < x < 45deg
inline void sincosf0( float x, float & s, float &c ) {

  float z = x * x;
  
  s = (((-1.9515295891E-4f * z
	 + 8.3321608736E-3f) * z
	- 1.6666654611E-1f) * z * x)
    + x;
  
  
  c = ((  2.443315711809948E-005f * z
	  - 1.388731625493765E-003f) * z
       + 4.166664568298827E-002f) * z * z
    - 0.5f * z + 1.0f;
  
}

inline void sincosf1( float xx, float & s, float &c ) {
  
  constexpr float PIO4 = 0.7853981633974483096;
  auto x = (xx>PIO4) ? xx-PIO4 : xx;
  
  //  float ls,lc;
  sincosf0(x,s,c);
  
  // swap
  if(xx>PIO4){
    float tmp = c;
    c=s; s=tmp;
  } 
  
}



int main() {
  constexpr float PIO2 = 1.5707963267948966192;
  constexpr float PIO4 = 0.7853981633974483096;
  std::mt19937 eng;
  std::uniform_real_distribution<float> rgen(0.,PIO4);

  constexpr int NN=1000000;
  alignas(32) std::array<float, NN> r;

  int ok=1; bool pr=true;

  long long tl=0, ts0=0, ts1=0, tsc=0;

  for (int i=0;i!=NN;++i)
    r[i]=rgen(eng);

  {
    // reference loop
    tl -= refClock();
    float sq=0.;
    for (int i=0;i!=NN;++i)
      sq+= r[i];
    tl += refClock();
    
    if(pr)
      printf("sum %f : %f\n",double(tl)/double(NN*ok),sq);
  }

  {
    // sin 0-45 loop
    ts0 -= refClock();
    float sq=0.;
    for (int i=0;i!=NN;++i)
      sq+= sinf0(r[i]);
    ts0 += refClock();
    
    if(pr)
      printf("sinf0 %f : %f\n",double(ts0)/double(NN*ok),sq);
  }

  {
    // sin 0-90 loop
    ts1 -= refClock();
    float sq=0.;
    for (int i=0;i!=NN;++i)
      sq+= sinf1(r[i]);
    ts1 += refClock();
    
    if(pr)
      printf("sinf1 %f : %f\n",double(ts1)/double(NN*ok),sq);
  }
  
  

  {
    // sincos
    tsc -= refClock();
    float sq=0.;
    for (int i=0;i!=NN;++i) {
      float s,c;
      sincosf1(r[i],s,c);
      sq+=s;
    }
    tsc += refClock();
    
    if(pr)
      printf("sincos %f : %f\n",double(tsc)/double(NN*ok),sq);
  }
  

  return 0;
}
