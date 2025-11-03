CC = gcc
CFLAGS = -Wall -std=c99
TARGET = program
OBJS = main.o mathutils.o

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

main.o: main.c mathutils.h
mathutils.o: mathutils.c mathutils.h

run:
	./$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: run clean
