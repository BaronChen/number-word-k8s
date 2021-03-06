#!/bin/bash
export CLOUDSDK_CORE_DISABLE_PROMPTS=1

gcloud components install kubectl

echo $GCLOUD_SERVICE_KEY > ${HOME}/gcloud-service-key.json
gcloud auth activate-service-account --key-file=${HOME}/gcloud-service-key.json
gcloud config set project number-2-text
gcloud config set compute/zone australia-southeast1-a

gcloud container clusters get-credentials number-text-convert

kubectl apply -f ./kube-config.yml
