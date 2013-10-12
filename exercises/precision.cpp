#include<numeric>
#include<cstdio>
#include<limits>
#include<cmath>



int main(int npar, char * []) {

  constexpr auto maxf = std::numeric_limits<float>::max();
  

  float a = 100.f+3.f/7.f;
  float b = 4.f/7.f;
  if (npar>2) b=nextafterf(b,-maxf);


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


  return 0;

}
