#!/bin/bash

# use example:
# first: chmod +x cmain.sh
# then: ./cmain.sh file_name.c

# Assign the first argument to a variable
FILENAME="$1"

# 1. Check if a filename was provided
if [ -z "$FILENAME" ]; then
    echo "Error: No filename provided."
    echo "Usage: $0 <filename.c>"
    exit 1
fi

# 2. Check if the file already exists
if [ -e "$FILENAME" ]; then
    echo "Error: File '$FILENAME' already exists."
    exit 2
fi

# 3. Write the C template to the new file using a "here document"
cat << EOF > "$FILENAME"
#include <stdio.h>

int main(int argc, char *argv[]) {
    // Your code here

    return 0;
}
EOF

# 4. Print a success message
echo "✅ Created '$FILENAME' with a main function."
