#include <string>
#include <iostream>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include "err.h"

using namespace std;

#define NR_PROC 5

int main ()
{
  pid_t pid;
  int i;

  cout << "My process id = " << getpid() << endl;
  
  for (i = 1; i <= NR_PROC; i++)
    switch ( pid = fork() ) {
      case -1:
        syserr("Error in fork");
	 
      case 0:
        cout << "Child process: My process id = " << getpid() << endl;
        cout << "Child process: Value returned by fork() = " << pid << endl;
		break;
       
      default:
        cout << "Parent process. My process id = " << getpid() << endl;
        cout << "Parent process. Value returned by fork() = " << pid << endl;
		if (wait(NULL) == -1) syserr("Error in wait");
		cout << "Parent id: " << getpid() << " zaraz zakoncz dzialanie " << endl;
		/*if (wait(NULL) == -1) 
			syserr("Error in wait");
		cout << "End" << endl;
		*/
    } /* switch */ 
  return 0;
}
