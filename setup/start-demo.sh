#!/bin/bash

export KUBECONFIG=/root/nginx-nosql-poc.yaml
NAMESPACE=k8s-cl1

if [ $1 = "up" ]; then
  # look for couchdb pod name
  COUCHDB_POD=`kubectl -n ${NAMESPACE} get pods | grep -i couchdb | awk '{print $1}'`
  MONGODB_POD=`kubectl -n ${NAMESPACE} get pods | grep -i mongodb | awk '{print $1}'`

  echo "Forwarding ports..."
  kubectl -n k8s-cl1 port-forward --address 0.0.0.0 ${COUCHDB_POD} 50201:5984 &
  echo $! >> kubectl.pid
  kubectl -n k8s-cl1 port-forward --address 0.0.0.0 ${MONGODB_POD} 50101:27017 &
  echo $! >> kubectl.pid
  echo "Starting mongo express..."
  docker-compose -f ../lab/mongo-express/docker-compose.yaml up -d
  echo "Starting fauxton..."
  docker-compose -f ../lab/couchdb-fauxton/docker-compose.yaml up -d
elif [ $1 = "down" ]; then
  echo "Removing mongo express..."
  docker-compose -f ../lab/mongo-express/docker-compose.yaml down
  echo "Removing fauxton..."
  docker-compose -f ../lab/couchdb-fauxton/docker-compose.yaml down
  
  echo "Killing port forwarders ..."
  if [ -f "kubectl.pid" ]; then 
    for pid in `cat kubectl.pid`; do
      kill -9 $pid
    done
    rm -rf kubectl.pid
  fi
else
  echo "Wrong argument, please use up or down."
fi
