#!/bin/bash

# Java Learning Environment Setup Script

echo "🚀 Java Learning Environment"
echo "=========================="

# Create directories if they don't exist
mkdir -p bin
mkdir -p src
mkdir -p examples

echo "📁 Directory structure:"
echo "  src/       - Your main Java source files"
echo "  examples/  - Example Java programs"
echo "  bin/       - Compiled .class files"
echo ""

# Function to compile and run Java programs
compile_and_run() {
    if [ $# -eq 0 ]; then
        echo "Usage: compile_and_run <JavaFileName>"
        return 1
    fi
    
    filename=$1
    classname=$(basename "$filename" .java)
    
    echo "🔨 Compiling $filename..."
    javac -d bin "$filename"
    
    if [ $? -eq 0 ]; then
        echo "✅ Compilation successful!"
        echo "🏃 Running $classname..."
        echo "------------------------"
        cd bin && java "$classname"
        cd ..
    else
        echo "❌ Compilation failed!"
    fi
}

# Export the function so it can be used in the shell
export -f compile_and_run

echo "🛠️  To compile and run a Java program:"
echo "   compile_and_run src/HelloWorld.java"
echo "   compile_and_run examples/Variables.java"
echo ""
echo "💡 Or manually:"
echo "   javac -d bin src/HelloWorld.java"
echo "   cd bin && java HelloWorld"
