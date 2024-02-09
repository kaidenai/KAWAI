#!/bin/bash
if [ -d ./files ];then
    echo found installing
    mkdir -p ./files/xttsv2/
    cd ./files/xttsv2/
    python -m venv venv
    source venv\bin\activate
    pip install xtts-api-server
    pip install torch==2.1.1+cu118 torchaudio==2.1.1+cu118 --index-url https://download.pytorch.org/whl/cu118
else
    echo please install kaidenAI first
fi
echo installed now exit?
#on end exit
exit
