// #include <string.h>
// #include <stdlib.h>
// #include <stdarg.h>

#include <string>
#include <iostream>
#include <errno.h>
#include "err.h"


using namespace std;

void syserr(const string msg){
  cerr << "ERROR: " << msg << " (" << errno << ") " << strerror(errno) << endl;
  exit(1);
}

void fatal(const string msg){
  cerr << "ERROR: " << msg  << endl;
  exit(1);
}
