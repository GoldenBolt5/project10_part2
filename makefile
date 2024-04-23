# Define the compiler
CC = gcc

# Define compiler flags
CFLAGS = -Wall -g

# Define the executable file
EXEC = project10_volunteer

# Define object files
OBJS = volunteer.o read_line.o project10_volunteer.o

# Linking rule for the executable
$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)

# Compiling volunteer.o from volunteer.c
volunteer.o: volunteer.c volunteer.h
	$(CC) $(CFLAGS) -c volunteer.c -o volunteer.o

# Compiling read_line.o from read_line.c
read_line.o: read_line.c read_line.h
	$(CC) $(CFLAGS) -c read_line.c -o read_line.o

# Compiling project10_volunteer.o from project10_volunteer.c
project10_volunteer.o: project10_volunteer.c volunteer.h read_line.h
	$(CC) $(CFLAGS) -c project10_volunteer.c -o project10_volunteer.o

# Clean rule for removing compiled objects and executable
clean:
	rm -f $(OBJS) $(EXEC)
