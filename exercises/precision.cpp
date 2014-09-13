#include<numeric>
#include<cstdio>
#include<limits>
#include<cmath>
#include<cstdlib>


int main(int npar, char * pars[]) {

  constexpr auto maxf = std::numeric_limits<float>::max();
  constexpr auto epsf = std::numeric_limits<float>::epsilon();
  printf("maxf=%g eps=%g\n",maxf,epsf);
  printf("maxf=%a eps=%a\n",maxf,epsf);


  float a = 100.f+3.f/7.f;
  float b = 4.f/7.f;

  if (npar>2) {
    a = atof(pars[1]);
    b = atof(pars[2]);
  }
 
  if (npar>3) b=nextafterf(b,-maxf);


  float s =a+b;
  float z = s-a;
  float t = b-z;
  
  printf("a=%g b=%g s=%g z=%g t=%g\n",a,b,s,z,t);
  printf("a=%a b=%a s=%a z=%a t=%a\n",a,b,s,z,t);
  printf("101 = %a\n",float(101));
  printf("nextafterf(s,maxf) =  %g %a\n",nextafterf(s,maxf),nextafterf(s,maxf));
  printf("nextafterf(s,maxf)-s = %g %a\n\n\n",nextafterf(s,maxf)-s,nextafterf(s,maxf)-s);

  float w=s;
  for (auto i=0; i<1000000; ++i)
    w+=t;
  printf("w= %g %a\n",w,w);

  w=0;
  for (auto i=0; i<1000000; ++i)
    w+=t;
  printf("w= %g %a\n",w,w);


  t = 0.501f*(nextafterf(s,maxf)-s);
  w=s;
  for (auto i=0; i<1000000; ++i)
    w+=t;
  printf("w= %g %a\n",w,w);

  t = 0.499f*(nextafterf(s,maxf)-s);
  w=s;
  for (auto i=0; i<1000000; ++i)                                    
    w+=t;
  printf("w= %g %a\n",w,w);

  w=0;
  for (auto i=0; i<1000000; ++i)
    w+=t;
  printf("w= %g %a\n",w,w);

  printf("maxerr=%g %a\n",1000000*epsf*64,1000000*epsf*64);

  return 0;

}
