# Define the compiler
CC = g++

# Define compiler flags
CFLAGS = -Wall -g

# Define directories
SRC_DIR = src
BIN_DIR = bin
OBJ_DIR = obj

# Define the target executable
TARGET_C = $(BIN_DIR)/client
TARGET_S = $(BIN_DIR)/server

# Define the source file
SRC_C = $(SRC_DIR)/client/client.cpp
SRC_S = $(SRC_DIR)/server/server.cpp

# Define the object file (intermediate compiled file)
OBJ_C = $(OBJ_DIR)/client.o
OBJ_S = $(OBJ_DIR)/server.o

# The default goal
all: $(TARGET_S) | $(TARGET_C)

# Rule to compile the target executable from the object file
$(TARGET_C): $(OBJ_C) | $(BIN_DIR)
	$(CC) $(OBJ_C) -o $(TARGET_C)

$(TARGET_S): $(OBJ_S) | $(BIN_DIR)
	$(CC) $(OBJ_S) -o $(TARGET_S)

# Rule to compile the object file from the source file
$(OBJ_C): $(SRC_C) | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $(SRC_C) -o $(OBJ_C)

$(OBJ_S): $(SRC_S) | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $(SRC_S) -o $(OBJ_S)

# Create the bin directory if it does not exist
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Create the obj directory if it does not exist
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Format
format:
	find $(SRC_DIR) -iname '*.h' -o -iname '*.cpp' | xargs clang-format -i

# Clean up the compiled files and directories
clean:
	rm -f $(OBJ_C) $(OBJ_S) $(TARGET_C) $(TARGET_S)
	rmdir $(BIN_DIR) $(OBJ_DIR)

# A phony target to avoid conflicts with files named 'clean' or 'all'
.PHONY: all clean
