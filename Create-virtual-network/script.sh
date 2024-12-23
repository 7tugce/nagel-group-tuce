#!/bin/bash

# Script settings
VNET_TEMPLATE="template.json"
VNET_PARAMETERS="parameters.json"
RESOURCE_GROUP="NG-KAELTE-TRIAL-000"

# Azure CLI template deployment
az deployment group create \
    --resource-group $RESOURCE_GROUP \
    --template-file $VNET_TEMPLATE \
    --parameters @$VNET_PARAMETERS

if [ $? -eq 0 ]; then
    echo "Virtual Network deployment successful!"
else
    echo "There is an error occurred while deploying the Virtual Network."
fi
