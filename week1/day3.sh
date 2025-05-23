#!/bin/bash

# Day 3: Text Processing Basics

# Mini-Project: Create a simple log analyzer that finds specific patterns

# Get users seaarch parttern
echo 'Enter a Keyword'

read keyword

# Search for users keyword
grep $keyword sample.log ; 

if [ $? -eq 0 ]; 

then echo "Found:" ;   grep -c $keyword  sample.log

else echo "Not found"; 

fi


