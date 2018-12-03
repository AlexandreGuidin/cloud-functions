#!/usr/bin/env bash

npm run build

NAME=$(node -p -e "require('./package.json').name")
./node_modules/@google-cloud/functions-emulator/bin/functions deploy ${NAME} --trigger-http --entry-point=index --source=build