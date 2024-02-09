#!/bin/bash
if [ -d ./files ];then
    echo already installed so updating
    cd ./files
    git stash
    git pull
    git stash pop
else
    #install SillyTavern for a base
    git clone https://github.com/SillyTavern/SillyTavern.git
    #install KAWAI
    mv ./SillyTavern ./files
    find ./files/ -type f -exec sed -i -e 's/SillyTavern/KAWAI/g' {} \;
    cp -r ./public/ ./files/

fi
