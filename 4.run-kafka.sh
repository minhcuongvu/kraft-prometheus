#!/bin/bash
kubectl apply -f kafka-controller-1.yaml
kubectl rollout restart deployment kafka-controller-1 -n kafka