#!/bin/bash

# Exit on error
set -e

# Define variables
BUILD_DIR="build"
EXECUTABLE="SmartThread"

# Delete existing build directory if it exists
if [ -d "$BUILD_DIR" ]; then
    echo "Removing existing $BUILD_DIR directory..."
    rm -rf "$BUILD_DIR"
fi

# Create build directory
echo "Creating $BUILD_DIR directory..."
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

# Run CMake
echo "Running CMake..."
cmake ..

# Run Make
echo "Running Make..."
make

# Run the executable
echo "Executing $EXECUTABLE..."
"./$EXECUTABLE"
