#!/usr/bin/env bash

NAME=$(node -p -e "require('./package.json').name")
./node_modules/@google-cloud/functions-emulator/bin/functions call ${NAME}