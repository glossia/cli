#!/usr/bin/env bash
#MISE description="Build the CLI for multiple platforms"

set -e

# Create temporary directory
temp_dir=$(mktemp -d)
trap 'rm -rf "$temp_dir"' EXIT

# Define platforms and build for each
platforms=(
    "linux/amd64"
    "linux/arm64" 
    "darwin/amd64"
    "darwin/arm64"
    "windows/amd64"
    "windows/arm64"
)

for platform in "${platforms[@]}"; do
    GOOS=${platform%/*}
    GOARCH=${platform#*/}
    
    if [ "$GOOS" = "windows" ]; then
        output="$temp_dir/glossia-$GOOS-$GOARCH.exe"
    else
        output="$temp_dir/glossia-$GOOS-$GOARCH"
    fi
    
    GOOS=$GOOS GOARCH=$GOARCH go build -o "$output" main.go
    
    if [ $? -ne 0 ]; then
        exit 1
    fi
done