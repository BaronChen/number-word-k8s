#!/bin/bash

cat api/backend-deployment.yml | sed "s/{apiVersion}/$1/g" > config.yml
printf  '\n---\n' >> config.yml
cat api/backend-service.yml >> config.yml
printf  '\n---\n' >> config.yml
cat web/frontend-deployment.yml | sed "s/{webVersion}/$2/g" >> config.yml
printf  '\n---\n' >> config.yml
cat web/frontend-service.yml >> config.yml


