#!/usr/bin/env bash

echo "Creating and activating venv..."
python3 -m venv --system-site-packages .venv
source .venv/bin/activate

echo "Installing requirements..."
pip install -r requirements.txt -q

echo "Running..."
./run.py "$@"

echo "Deactivating..."
deactivate
