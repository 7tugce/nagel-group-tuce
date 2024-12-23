#!/bin/bash

# Script
RESOURCE_GROUP_TEMPLATE="template.json"
RESOURCE_GROUP_PARAMETERS="parameters.json"
SUBSCRIPTION_ID="e468025a-9923-4e46-977e-344fba9b2040"  

az account set --subscription $SUBSCRIPTION_ID

# Azure CLI template deployment
az deployment sub create \
    --location germanywestcentral \
    --template-file $RESOURCE_GROUP_TEMPLATE \
    --parameters @$RESOURCE_GROUP_PARAMETERS

if [ $? -eq 0 ]; then
    echo "Resource Group deployment successful!"
else
    echo "There is an error occurred while deploying Resource Group."
fi
