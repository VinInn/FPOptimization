#include <iostream>     // std::cout
#include <limits>       // std::numeric_limits

int main () {
  std::cout << std::boolalpha;
  std::cout << "Minimum value: " << std::numeric_limits<float>::min() << '\n';
  std::cout << "Maximum value: " << std::numeric_limits<float>::max() << '\n';
  std::cout << "Minimum subnormal: " << std::numeric_limits<float>::denorm_min() << '\n';
  std::cout << "epsilon: " << std::numeric_limits<float>::epsilon() << '\n';
  std::cout << "error: " << std::numeric_limits<float>::round_error() << '\n';
  std::cout << "Is signed: " << std::numeric_limits<float>::is_signed << '\n';
  std::cout << "Non-sign bits: " << std::numeric_limits<float>::digits << '\n';
  std::cout << "has infinity: " << std::numeric_limits<float>::has_infinity << '\n';
  return 0;
}

