all: proc_fork proc_tree proc_exec simple_shell  

proc_fork: proc_fork.o err.o
	g++ -Wall -o proc_fork proc_fork.o err.o

proc_tree: proc_tree.o err.o
	g++ -Wall -o proc_tree proc_tree.o err.o

proc_exec: proc_exec.o err.o
	g++ -Wall -o proc_exec proc_exec.o err.o

simple_shell: simple_shell.o err.o
	g++ -Wall -o simple_shell simple_shell.o err.o

proc_fork.o: proc_fork.cpp err.h
	g++ -Wall -c proc_fork.cpp

proc_tree.o: proc_tree.cpp err.h
	g++ -Wall -c proc_tree.cpp

proc_exec.o: proc_exec.cpp err.h
	g++ -Wall -c proc_exec.cpp

simple_shell.o: simple_shell.cpp err.h
	g++ -Wall -c simple_shell.cpp 

err.o: err.cpp err.h
	g++ -Wall -c err.cpp

clean:
	rm -f *.o *~ proc_fork proc_exec simple_shell proc_tree 
