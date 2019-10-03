#!/bin/bash

# Python実行環境の構築
PYTHON=/usr/bin/python3

if [ -e yfenv ]; then
    rm -rf yfenv
fi

mkdir yfenv

cd yfenv
$PYTHON -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install wheel
pip install numpy pandas yfinance
