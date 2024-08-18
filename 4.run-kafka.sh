#!/bin/bash
kubectl apply -f kafka-controller-1.yaml
kubectl rollout restart deployment kafka-controller-1 -n kafka

kubectl apply -f kafka-broker-1.yaml
kubectl rollout restart deployment kafka-broker-1 -n kafka

kubectl apply -f prometheus-1.yaml
kubectl rollout restart deployment prometheus -n kafka
