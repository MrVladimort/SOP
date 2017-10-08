#include <string>
#include <iostream>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include "err.h"

using namespace std;

int main ()
{
  pid_t pid;
  
  cout << "My process id = " << getpid() << endl;
  
  switch (pid = fork()) {
    case -1:
      syserr("Error in fork");
      
    case 0:
      cout << "Child process: My process id = " << getpid() << endl;
      cout << "Child process: Value returned by fork() = " << pid << endl;

      execlp( "ls", "ls", "-al",  NULL);
      syserr("Error in execlp");
            
    default:
      cout << "Parent process. My process id = " << getpid() << endl;
      cout << "Parent process. Value returned by fork() = " << pid << endl;
       
      if (wait(NULL) == -1) 
	syserr("Error in wait");
      exit(0);
  } /*switch*/
}
