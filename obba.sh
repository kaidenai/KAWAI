#!/bin/bash
if [ -d ./ooba ];then
    echo launching ooba...
    cd ./ooba
    ./start_linux.sh
else
    #install ooba
    git clone https://github.com/oobabooga/text-generation-webui.git ./ooba
