#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concepts Used: interactive read, string concatenation, redirection

echo "************************************************"
echo "* OPEN SOURCE MANIFESTO GENERATOR        *"
echo "************************************************"
echo "Please provide some insights to generate your document:"
echo ""

read -p ">> What is your absolute favorite Python library? " PY_LIB
read -p ">> If you had to describe open-source in one verb, what is it? " VERB
read -p ">> What is the main problem you want to solve with code? " PROBLEM

TODAY=$(date "+%B %d, %Y")
CREATOR=$(whoami)
OUTPUT_FILE="${CREATOR}_declaration.txt"

# Construct the manifesto string using concatenation
MANIFESTO_TEXT="DECLARATION OF OPEN DEVELOPMENT
Date: $TODAY
Author: $CREATOR

I believe that software should $VERB the world. Every day, I rely on the hard work of thousands of developers through tools like the $PY_LIB library. 
Because I have benefited from this free sharing of knowledge, I pledge to contribute back. 
My ultimate goal is to build solutions for $PROBLEM, and when I do, I will share them openly so others can stand on my shoulders."

# Write the text to the file
echo "$MANIFESTO_TEXT" > "$OUTPUT_FILE"

echo ""
echo "[SUCCESS] Your manifesto has been successfully written to -> $OUTPUT_FILE"
echo ""
echo "--- FILE PREVIEW ---"
cat "$OUTPUT_FILE"
echo "--------------------"
