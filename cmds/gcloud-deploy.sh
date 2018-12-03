#!/usr/bin/env bash

NAME=$(node -p -e "require('./package.json').name")
npm run build

gcloud functions deploy ${NAME} \
    --runtime nodejs6 \
    --trigger-http \
    --memory=128 \
    --entry-point=index \
    --source=build \
    --stage-bucket=gs://${NAME}