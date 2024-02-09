#!/bin/bash
if [ -d ./files ];then
    echo already installed so updating
    cd ./files
    git stash
    git pull
    git stash pop
else
    git clone https://github.com/SillyTavern/SillyTavern.git
    mv ./SillyTavern ./files
    find ./files/ -type f -exec sed -i -e 's/SillyTavern/KaidenAI/g' {} \;
    cp -r ./public/ ./files/

fi
