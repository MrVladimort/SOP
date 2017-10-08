#include <string>
#include <iostream>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include "err.h"

using namespace std;

/* Parse - split the command in buf into individual arguments */
void parse (char buf[], char *args[])
{
  int i = 0, j = 0;
  
  while (buf[i] != '\0') {
    /* Strip whitespace. Use nulls, so that the previous argument
       is terminated automatically */
    
    for (; buf[i] == ' ' || buf[i] == '\t'; buf[i++] = '\0');

    /* Save the argument */
    args[j] = buf + i;
    j++;
    
    /* Skip over the argument */
    for (; buf[i] != '\0' && buf[i] != ' ' && buf[i] != '\t'; i++);
  } 

  args[j] = 0;
} /* parse */

/* execute - spawn a child process and execute the program */
void execute(char *args[])
{
  int pid;
  
  /*Get a child process*/
  
  switch(pid = fork()) {
    case -1: /* error */
      syserr("Error in fork");

    case 0: /* child */
      execvp(args[0], args);
      syserr("Error in execlp");

    default: /* parent */
      while (wait(NULL) != pid);  /*empty*/
  }
} /* execute */

int main()
{
  char buf[1024], *args[64];
  
  for (;;) {
    /* Prompt for and read a command */
    cout << "Command: " << flush;
    
    if  (cin.eof()) {
      cout << endl;
      return 0;
    } else {
      cin.getline(buf, sizeof(buf));
    }
    
    if (strlen(buf) == 0) 
      continue;
    
    parse(buf, args);
    execute(args);
  } 
} /* main */
