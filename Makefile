CC = gcc
CFLAGS = -Wall -g -O0
SUBDIRS = insert \
	  sort \
	  query \
	  delete \
	  show \
	  main \
	  obj

OBJS = insert.o sort.o query.o delete.o show.o main.o
BIN =flightapp
OBJS_DIR = obj
BIN_DIR = bin

export CC CFLAGS SUBDIRS OBJS BIN OBJS_DIR BIN_DIR

all : CHECK_DIR $(SUBDIRS)
CHECK_DIR :
	    mkdir -p $(BIN_DIR)
$(SUBDIRS) : ECHO
	     make -C $@
ECHO :
	    @echo $(SUBDIRS)
	    @echo begin compile
clean :
	    @$(RM) $(OBJS_DIR)/*.o
	    @rm -rf $(BIN_DIR)

