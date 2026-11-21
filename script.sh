#!/bin/bash

echo "Create directory. Enter the directory name: "
read directory_name
mkdir -p "$directory_name/src"

echo "Create a .c file. Enter the file name: "
read filename
touch "$directory_name/src/$filename.c"
cat > "$directory_name/src/$filename.c" << 'EOF'

#include <stdio.h>
#include <math.h>
int main() {
	
	return 0;

}
EOF

echo "Did we add new LaTeX file? (y or n): "
read latexfile

if [ "$latexfile" = "y" ]; then
	git clone git@github.com:Vekruna/NULP_MAIN_ZVIT.git "$directory_name/latexDoc"
else
	echo "LaTeX Dont CREATE"
fi

echo "Projetc created in: $(pwd)/$directory_name "
