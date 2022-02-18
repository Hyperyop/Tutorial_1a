all: hello-world fancy inter
fancy : fancy_hello_world

fancy_hello_world : fancy_hello_world.o
	cc -g -o fancy fancy_hello_world.o
fancy_hello_world.o : fancy_hello_world.c 
	cc -c -Wall -g fancy_hello_world.c 
inter : hello_world_inter.o
	cc -g -o hello_world_inter hello_world_inter.o
hello_world_inter.o : hello_world_inter.c
	cc -c -Wall -g hello_world_inter.c 
hello-world: hello-world.o
	cc -g -o hello-world hello-world.o
 
hello-world.o: hello-world.c
	cc -c -Wall -g hello-world.c 

clean_fancy:
	rm fancy fancy_hello_world.o
clean_inter:
	rm hello_world_inter hello_world_inter.o
clean_base:
	rm hello-world.o hello-world 
clean:
	rm hello-world.o hello-world fancy fancy_hello_world.o hello_world_inter hello_world_inter.o