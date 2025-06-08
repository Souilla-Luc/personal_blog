#!/bin/bash
set -e

echo "Installing Quarto (tar.gz method, no sudo)..."

QUARTO_VERSION=1.5.47

# Make a directory for local installs
mkdir -p $HOME/local

# Download the tar.gz release
wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Extract to local directory
tar -xzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz -C $HOME/local

# Add to PATH
export PATH=$HOME/local/quarto-${QUARTO_VERSION}/bin:$PATH

# Test Quarto
quarto --version