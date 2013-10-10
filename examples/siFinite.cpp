
namespace edm {
  template <typename T>
  bool isFinite(T x);

  template <typename T>
  inline
  bool isNotFinite(T x) {
    return !isFinite(x);
  }
  
  template<>
  inline
  bool isFinite(float x) {
    const unsigned int mask =  0x7f800000;
    union { unsigned int l; float d;} v;
    v.d =x;
    return (v.l&mask)!=mask;
  }
  
  template<>
  inline
  bool isFinite(double x) {
    const unsigned long long mask = 0x7FF0000000000000LL;
    union { unsigned long long l; double d;} v;
    v.d =x;
    return (v.l&mask)!=mask;
  }
}

#include<limits>
#include<cmath>
#include<cstdlib>
#include<cassert>

int main(int n, const char**) {
  using namespace edm;
  
  
  double zero = atof("0");
  
  assert(isFinite(double(0)) );
  assert(isFinite(float(0)) );
  assert(isFinite(double(-3.14)) );
  assert(isFinite(float(-3.14)) );
  assert(!isFinite(std::sqrt(-double(n))) );
  assert(!isFinite(std::sqrt(-float(n))) );
  assert(!isFinite(1./zero) );
  assert(!isFinite(float(1.)/float(zero)) );
  assert(!isFinite(-1./zero) );
  assert(!isFinite(-1.f/float(zero)) );

  //

  assert(!isNotFinite(double(0)) );
  assert(!isNotFinite(float(0)) );
  assert(!isNotFinite(double(-3.14)) );
  assert(!isNotFinite(float(-3.14)) );
  assert(isNotFinite(std::sqrt(-double(n))) );
  assert(isNotFinite(std::sqrt(-float(n))) );
  assert(isNotFinite(1./zero) );
  assert(isNotFinite(float(1.)/float(zero)) );
  assert(isNotFinite(-1./zero) );
  assert(isNotFinite(-1.f/float(zero)) );



}
