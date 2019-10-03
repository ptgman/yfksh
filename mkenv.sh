#!/bin/bash

# Python実行環境の構築
PYTHON=/usr/bin/python3
COMMON_DIR=~/hostpg

if [ -e yfkenv ]; then
    rm -rf ~/yfkenv
fi

mkdir ~/yfkenv

cd ~/yfkenv
$PYTHON -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install wheel
pip install numpy pandas yfinance
