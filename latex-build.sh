#!/bin/bash

make clean
make html
make latex
FILENAME=document
TEXFILENAME=$FILENAME.tex
DVIFILENAME=$FILENAME.dvi
PDFFILENAME=$FILENAME.pdf
TEXDIR=_build/latex/

cd $TEXDIR
platex $TEXFILENAME && dvipdfmx -p b5 -r 600 -v -V 5 -o $PDFFILENAME $DVIFILENAME
