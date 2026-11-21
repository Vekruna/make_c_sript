#!/bin/bash

echo "Create directory. Enter the directory name: "
read directory_name
mkdir -p $directory_name

echo "Create a .c file. Enter the file name: "
read filename
touch "$directory_name/$filename.c"

echo "Did we add new LaTeX file? (y or n): "
read latexfile

if [ "$latexfile" = "y" ]; then
	echo "Enter the filename: "
	read latexfilename
	touch "$directory_name/$latexfilename.tex"
else
	echo "LaTeX Dont CREATE"
fi

echo "Projetc created in: $(pwd)/$directory_name "
