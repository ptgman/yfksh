#!/bin/bash

# Python実行環境の構築
PYTHON=/usr/bin/python3
COMMON_DIR=~/hostpg
MEIGAR_CSV=us-meigara.csv

if [ -e yfkenv ]; then
    rm -rf ~/yfkenv
fi

mkdir ~/yfkenv

# install Python
cd ~/yfkenv
$PYTHON -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install wheel
pip install numpy pandas yfinance

# make directories in Windows
mkdir $COMMON_DIR/yfk_{csv,meigara,bat}

SCR_DIR=$(cd $(dirname $0); pwd)
cp $COMMON_DIR/yfk_meigara/$MEIGARA_CSV
