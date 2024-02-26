#!/bin/bash
if [ -d ./ooba ];then
    echo already installed so updating
    cd ./files
    git pull
else
    #install ooba
    git clone https://github.com/oobabooga/text-generation-webui.git ./ooba
