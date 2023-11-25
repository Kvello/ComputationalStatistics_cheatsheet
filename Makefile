# Define variables
TEX=pdflatex
TEXFLAGS=-interaction=nonstopmode -file-line-error
SOURCES=main.tex
OUTPUT_DIR=output

# Default target
all: $(OUTPUT_DIR)/output.pdf

# Compile rule
$(OUTPUT_DIR)/output.pdf: $(SOURCES)
	mkdir -p $(OUTPUT_DIR)
	$(TEX) $(TEXFLAGS) -output-directory=$(OUTPUT_DIR) $<
clean: 
	rm -rf build
# Phony targets
.PHONY: all clean

