#ifdef HAVE_CONFIG_H
#include "config.h"
#endif
#include <iostream>
#include <dune/common/test/testsuite.hh>
#include <dune/common/arraylist.hh>

int main(int argc, char **argv)
{
  Dune::TestSuite test;
  Dune::ArrayList<double, 10> alist;

  // Hemos llenado con los n'umeros del 0 al 99
  for (int i = 0; i < 100; i++)
  {
    alist.push_back(i);
  }

  // Imprimir el array list
  for (auto &e: alist)
  {
    std::cout << e << std::endl;
  }
}
