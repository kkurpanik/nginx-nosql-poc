#!/bin/bash

echo "Deploying databases..."
export KUBECONFIG=/root/nginx-nosql-poc.yaml

NAMESPACE=k8s-cl1

# deploy couchdb
kubectl create ns ${NAMESPACE}
kubectl -n ${NAMESPACE} apply -f ../lab/couchdb/pv.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/couchdb/pvc.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/couchdb/secrets.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/couchdb/deployment.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/service.yaml

# deploy mongodb
kubectl -n ${NAMESPACE} apply -f ../lab/mongodb/pv.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/mongodb/pvc.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/mongodb/secrets.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/mongodb/deployment.yaml
kubectl -n ${NAMESPACE} apply -f ../lab/mongodb/service.yaml