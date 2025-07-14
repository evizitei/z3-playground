#!/bin/bash

# Create virtual environment using UV
echo "Creating virtual environment with UV..."
uv venv .venv

# Activate virtual environment
echo "Activating virtual environment..."
source .venv/bin/activate

# Install dependencies
echo "Installing z3-solver..."
uv pip install -r requirements.txt

echo "Setup complete! To activate the environment, run:"
echo "source .venv/bin/activate"