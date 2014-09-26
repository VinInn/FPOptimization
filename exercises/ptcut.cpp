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


inline float pt2(float x, float y) {
  return x*x+y*y;
}

inline float pt(float x, float y) {
  return std::sqrt(pt2(x,y));

}

inline float phi(float x, float y) {
  return std::atan2(y,x);
}

inline float eta(float x, float y, float z) { float t(z/pt(x,y)); return ::asinhf(t);} 


inline float dot(float x1, float y1, float x2, float y2) {
  return x1*x2+y1*y2;
} 

inline float cdphi(float x1, float y1, float x2, float y2) {
  return dot(x1,y1,x2,y2)/std::sqrt(pt2(x1,y1)*pt2(x2,y2));
}



int main() {
  //  constexpr float PIO2 = 1.5707963267948966192;
  //constexpr float PIO4 = 0.7853981633974483096;
  std::mt19937 eng;
  std::uniform_real_distribution<float> rgen(-1.,1.);

  constexpr int NN=1000000;
  alignas(32) std::array<float, NN> x;
  alignas(32) std::array<float, NN> y;

  int ok=1; bool pr=true;

  //  long long tl=0, ts0=0, ts1=0, tsc=0;

  for (int i=0;i!=NN;++i) {
    x[i]=rgen(eng);
    y[i]=rgen(eng);
  }

  {
    // reference loop
    long long tl = -refClock();
    float sq=0.;
    for (int i=0;i!=NN;++i)
      sq+= x[i]+y[i];
    tl += refClock();
    
    if(pr)
      printf("sum %f : %f\n",double(tl)/double(NN*ok),sq);
  }

  {
    // pt cut 
    long long tl = -refClock();
    constexpr float ptcut = 0.5f;
    float sq=0.;
    // #pragma omp simd reduction(+: sq)
    for (int i=0; i<NN;++i) {
      // sq+= (pt(x[i],y[i])>ptcut) ? x[i]+y[i] : 0.f;
      if (pt(x[i],y[i])>ptcut) 
	sq+= x[i]+y[i];
    }
    tl += refClock();
    
    if(pr)
      printf("pt %f : %f\n",double(tl)/double(NN*ok),sq);
  }


  auto dphi = [](float p1,float p2) {
    auto dp=std::abs(p1-p2); if (dp>float(M_PI)) dp-=float(2*M_PI);
    return std::abs(dp);
  };

 {
   // phi cut 
   long long tl = -refClock();
   constexpr float phicut = 0.125f;
   float sq=0.;
   int tot =0;
   for (int i=0;i!=NN-1;++i) {
     for (int j=i+1;j<std::min(i+16,NN);++j) {
       if (dphi(phi(x[i],y[i]),phi(x[j],y[j]))<phicut) 
	 { sq+= x[j]+y[j]; ++tot;}
     }
   }
   tl += refClock();
   
   if(pr)
     printf("phicut %f : %f %d\n",double(tl)/double(NN*ok),sq,tot);
 }


  return 0;

}
