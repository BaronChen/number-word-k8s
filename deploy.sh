#!/bin/bash

az login --service-principal -u 39afa0d5-fafd-49ae-b84d-d5e94c5def69 --password fa526938-9d11-4b52-b49d-07d0f87d9cee --tenant 0a7ce75d-d228-405f-88bc-3fcbc1447f2c

az aks get-credentials --resource-group number-word-prod --name number-word

kubectl apply -f ./kube-config.yml
