#!/bin/bash

# Python実行環境の構築
PYTHON=/usr/bin/python3
COMMON_DIR=~/hostpg
MEIGARA_CSV=us-meigara.csv

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
deactivate

SCR_DIR=$(cd $(dirname $0); pwd)
# make directories in Windows
rm -rf $COMMON_DIR/*
mkdir $COMMON_DIR/yfk_{csv,meigara,bat}

cp $SCR_DIR/$MEIGARA_CSV $COMMON_DIR/yfk_meigara/
