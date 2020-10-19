#!/bin/bash

rm ~/.firma/config/genesis.json
cp genesis.json ~/.firma/config/genesis.json

rm -rf ~/.firma/config/gentx
cp -r gentx ~/.firma/config/

echo "Done!"

