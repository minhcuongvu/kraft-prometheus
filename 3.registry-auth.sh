#!/bin/bash
kubectl delete secret privateregistry
kubectl create secret docker-registry -n kafka privateregistry \
  --docker-server=local.registry.com:32555 \
  --docker-username=registry \
  --docker-password=pwd