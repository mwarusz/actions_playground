#include <iostream>
#include <YAKL.h>
#include <YAKL_netcdf.h>
#include <mpi.h>

int main(int argc, char* argv[]) {
  MPI_Init(&argc, &argv);
  yakl::init();
  yakl::SimpleNetCDF nc;
  std::cout << "Hello actions" << std::endl;
  yakl::finalize();
  MPI_Finalize();
}
