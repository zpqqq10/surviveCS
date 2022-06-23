# Makefile
# 张沛全 3190102214

CC = g++
OBJECTS = myshell.o commands.o
SOURCES = myshell.cpp commands.cpp
TARGET = myshell
# HEADERS = 
$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET) -lm
commands.o: commands.cpp base.h commands.h
	$(CC) -c commands.cpp
myshell.o: myshell.cpp myshell.h base.h commands.h
	$(CC) -c myshell.cpp
clean: 
	rm $(OBJECTS) $(TARGET)