#!/bin/bash

# Script settings
VM_TEMPLATE="template.json"
VM_PARAMETERS="parameters.json"
RESOURCE_GROUP="NG-KAELTE-TRIAL-000"

# Azure CLI template deployment
az deployment group create \
    --resource-group $RESOURCE_GROUP \
    --template-file $VM_TEMPLATE \
    --parameters @$VM_PARAMETERS

if [ $? -eq 0 ]; then
    echo "Virtual Machine deployment successful!"
else
    echo "There is an error occurred while deploying the Virtual Machine."
fi
