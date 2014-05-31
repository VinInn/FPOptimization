#include<cmath>
#include<iostream>
#include<cstdlib>
#include<cstring>
#include<cstdio>


void look(float x) {
  printf("\n%a\n",x);
  int e; float r = ::frexpf(x,&e);
  std::cout << x << " exp " << e << " res " << r << std::endl;
  	
  auto ftoi = [](float f)->int { int i; memcpy(&i,&f,4); return i;};
 
  auto bin = ftoi(x);
  printf("%e %a %x\n", x, x,  bin);
  auto log_2 = ((bin >> 23) & 255) - 127;  //exponent
  bin &= 0x007FFFFF;                              //mantissa (aka significand)

  std::cout << "exp " << log_2 << " significand in binary " << std::hex << bin 
	    << " significand as float " <<  std::dec << std::copysign((bin|0x800000)*::pow(2.,-23),x)
                   << std::endl;
 }



int main(int npar, char * pars[]) {
  for (int i=1; i<npar; ++i)
    look(::atof(pars[i]));


  return npar>1;
};
