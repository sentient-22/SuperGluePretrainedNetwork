#!/bin/bash

if [ "$1" = "0" ]; then
    if [ -d ".venv" ]; then
        echo "Removing the .venv directory..."
        rm -r .venv
        echo ".venv directory removed."
    else
        echo ".venv directory does not exist, so it cannot be removed."
    fi
fi

if [ ! -d ".venv" ]; then
    python -m venv .venv --prompt iamanartist
    echo "Virtual environment created."
fi


source .venv/bin/activate

pip install -r requirements.txt
echo "Only for jupyter notebooks"
python -m ipykernel install --user --name=.venv   

echo "Packages have been installed. Waiting for 5 seconds..."
sleep 5
