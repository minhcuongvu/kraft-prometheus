# kafka, kraft, docker-compose, k8s

## notes

kafka brokers and controllers need to be in StatefulSet

## cmd

```sh
docker build -t localhost:5000/prometheus:latest ./prometheus/
```

```sh
docker push localhost:5000/prometheus:latest
```

```sh
kubectl apply -f prometheus-deployment.yaml
```

```sh
kubectl apply -f prometheus-service.yaml
```

```sh
kubectl apply -f prometheus-pvc.yaml
```

```sh
kubectl rollout status deployment/prometheus
```

```sh
kubectl rollout restart deployment prometheus
```

```sh
kubectl port-forward service/prometheus 9090:9090 &
```

```sh
kubectl get service prometheus -o yaml
```
