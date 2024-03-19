#!/bin/bash
set -x
namespaceStatus=$(kubectl get namespaces ramcoin -o json | jq .status.phase -r)

if [ $namespaceStatus == "Active" ]
then
    echo "Namespace ramcoin exists, need to clean up"
    kubectl delete namespaces ramcoin
fi

echo "Creating namespace ramcoin"
kubectl create namespace ramcoin 
 
echo "Creating pods"
kubectl create -f ramcoin.yaml --namespace ramcoin

echo "Creating services"
kubectl create -f ramcoin-service.yaml --namespace ramcoin


kubectl get pods -n ramcoin

