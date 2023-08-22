#include <iostream>
#include <YAKL.h>

int main() {
  yakl::init();
  std::cout << "Hello actions" << std::endl;
  yakl::finalize();
}
