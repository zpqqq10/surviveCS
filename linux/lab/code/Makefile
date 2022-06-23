# Makefile
# 张沛全 3190102214

CC = gcc
OBJECTS = main.o input.o compute.o
SOURCES = main.c input.c compute.c
TARGET = power
# HEADERS = 
$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET) -lm
main.o: main.c main.h compute.h input.h
	$(CC) -c main.c
input.o: input.c input.h
	$(CC) -c input.c
compute.o: compute.c compute.h
	$(CC) -c compute.c
clean: 
	rm $(OBJECTS) $(TARGET)