
# az aks create --resource-group number-word-prod --name number-word --node-count 1 --generate-ssh-keys

az aks get-credentials --resource-group number-word-prod --name number-word

$CLIENT_ID = az aks show --resource-group number-word-prod --name number-word --query "servicePrincipalProfile.clientId"

$ACR_ID = az acr show --name baron123 --resource-group ContainerRegistry --query "id"

az role assignment create --assignee $CLIENT_ID --role Reader --scope $ACR_ID