#!/bin/bash
set -e

echo "Installing Quarto..."

QUARTO_VERSION=1.5.47

wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb

sudo dpkg -i quarto-${QUARTO_VERSION}-linux-amd64.deb

quarto --version