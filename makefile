SRC_DIR = ./source
OBJ_DIR = ./build

SRC_FILES = $(wildcard $(SRC_DIR)/*.c) 
# SRC_FILES = ./source/main.c ./source/bar.c ./source/bar.c
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))
# OBJ_FILES = $(patsubst ./source/%.c, ./build/%.o, $(SRC_FILES))
# OBJ_FILES = ./build/main.o ./build/bar.o ./build/bar.o

all: $(OBJ_FILES)
	@gcc $(OBJ_FILES) -o $(OBJ_DIR)/app.out

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo Compilando $< 
	@mkdir -p $(OBJ_DIR)
	@gcc -o $@ -c $< 
