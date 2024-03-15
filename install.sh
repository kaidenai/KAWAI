#!/bin/bash
if [ -d ./files ];then
    echo already installed so updating
    cd ./files
    git stash
    git pull
    git stash pop
else
    #install SillyTavern for a base
    git clone https://github.com/SillyTavern/SillyTavern.git ./files
    #install SIWAI
    find ./files/public/ -type f -exec sed -i -e 's/SillyTavern/SIWAI/g' {} \;
    find ./files/public/scripts/extensions/ -type f -exec sed -i -e 's/SIWAI/SillyTavern/g' {} \;
    cp -r ./public/ ./files/

fi
