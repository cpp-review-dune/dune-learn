#ifdef HAVE_CONFIG_H
#include "config.h"
#endif
#include <dune/common/fmatrix.hh>
#include <dune/istl/io.hh>
#include <dune/istl/matrix.hh>

int main(int argc, char **argv)
{
  constexpr int dim = 2;
  Dune::FieldVector<double, dim> x(0);
  Dune::printvector(std::cout, x, "x", "row");

  Dune::Matrix<double> matrix(3, 5);
  matrix = 1;
  Dune::printmatrix(std::cout, matrix, "Matrix", "--");
}
