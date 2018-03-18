#!/bin/bash

cat api/backend-deployment.yml | sed "s/{apiVersion}/$1/g" > kube-config.yml
printf  '\n---\n' >> kube-config.yml
cat api/backend-service.yml >> kube-config.yml
printf  '\n---\n' >> kube-config.yml
cat web/frontend-deployment.yml | sed "s/{webVersion}/$2/g" >> kube-config.yml
printf  '\n---\n' >> kube-config.yml
cat web/frontend-service.yml >> kube-config.yml


