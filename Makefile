# Define the compiler
CC = g++

# Define compiler flags
CFLAGS = -Wall -g

# Define directories
SRC_DIR = src
BIN_DIR = bin
OBJ_DIR = obj

# Define the target executable
TARGET = $(BIN_DIR)/client

# Define the source file
SRC = $(SRC_DIR)/client.cpp

# Define the object file (intermediate compiled file)
OBJ = $(OBJ_DIR)/client.o

# The default goal
all: $(TARGET)

# Rule to compile the target executable from the object file
$(TARGET): $(OBJ) | $(BIN_DIR)
	$(CC) $(OBJ) -o $(TARGET)

# Rule to compile the object file from the source file
$(OBJ): $(SRC) | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

# Create the bin directory if it does not exist
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Create the obj directory if it does not exist
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Format
format:
	clang-format -i src/*

# Clean up the compiled files and directories
clean:
	rm -f $(OBJ) $(TARGET)
	rmdir $(BIN_DIR) $(OBJ_DIR)

# A phony target to avoid conflicts with files named 'clean' or 'all'
.PHONY: all clean
