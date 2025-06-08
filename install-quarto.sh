#!/bin/bash
set -e

echo "Installing Quarto without sudo..."

QUARTO_VERSION=1.5.47

# Create a local bin directory
mkdir -p $HOME/local/bin

# Download and extract the .deb package
wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb

ar x quarto-${QUARTO_VERSION}-linux-amd64.deb
tar -xJf data.tar.xz

# Move the Quarto binary to a known path
mv ./usr/bin/quarto $HOME/local/bin/

# Update PATH
export PATH=$HOME/local/bin:$PATH

# Test
quarto --version