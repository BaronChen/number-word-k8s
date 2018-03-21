#!/bin/bash

az login --service-principal -u $SERVICE_PRINCIPLE --password $SP_PASSWORD --tenant $TENANT

az aks get-credentials --resource-group number-word-prod --name number-word

kubectl apply -f ./kube-config.yml
