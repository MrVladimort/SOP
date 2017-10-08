#ifndef _ERR_
#define _ERR_

#include <string>
#include <cstring>
#include <cstdlib>



using namespace std;

/* print system call error message and terminate */
extern void syserr(const string msg);

/* print error message and terminate */
extern void fatal(const string msg);

#endif
