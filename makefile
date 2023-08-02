# Makefile

GHC = ghc
GHC_FLAGS = -O2
SRC_DIR = src
OUT_DIR = out
MODULES = $(SRC_DIR)/add.hs $(SRC_DIR)/main.hs
MAIN = $(SRC_DIR)/main.hs
OUT = $(OUT_DIR)/main

all: setup $(OUT)

setup:
	mkdir -p $(OUT_DIR)

$(OUT): $(MODULES)
	$(GHC) $(GHC_FLAGS) -i$(SRC_DIR) -outputdir $(OUT_DIR) -o $(OUT) $(MAIN)

clean:
	rm -rf $(OUT_DIR)
