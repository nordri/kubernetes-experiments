#!/bin/bash -x
set -e

kubectl delete -f ./networkpolicy-deny-all.yaml
sleep 1
kubectl delete -f ./MASTER/master-deployment.yaml
sleep 1
kubectl delete -f ./Net1/networkpolicy.yaml
sleep 1
kubectl delete -f ./Net1/ubuntu-deployment.yaml
sleep 1
kubectl delete -f ./Net1/apache-deployment.yaml
sleep 1
kubectl delete -f ./Net2/networkpolicy.yaml
sleep 1
kubectl delete -f ./Net2/ubuntu-deployment.yaml
sleep 1
kubectl delete -f ./Net2/apache-deployment.yaml
