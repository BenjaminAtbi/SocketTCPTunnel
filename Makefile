# compiler to use
CC=gcc

#target dir
build = ./build/

# enable debug symbols and warnings
CFLAGS=-c -Wall

all: server client

server: $(build) $(build)server.o
	$(CC) $(build)server.o -o $(build)server

client: $(build) $(build)client.o
	$(CC) $(build)client.o -o $(build)client

$(build)server.o: $(build) server.c
	$(CC) $(CFLAGS) server.c -o $(build)server.o

$(build)client.o: $(build) client.c
	$(CC) $(CFLAGS) client.c -o $(build)client.o

$(build): 
	mkdir -p $@
clean:
	rm -rf $(build)*.o $(build)client $(build)server


