#!/bin/bash

cd "$( dirname "$0" )"

if ! command -v java > /dev/null 2>&1; then
  echo "Java not installed."
  exit
fi

java -Xmx4608M -jar PokeRandoZX.jar please-use-the-launcher
