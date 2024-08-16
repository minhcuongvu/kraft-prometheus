# kafka, kraft, docker-compose, k8s

## cmd

### kafka

```sh
docker build -t local.registry.com:32555/kafka:latest ./kafka/
```

```sh
docker push local.registry.com:32555/kafka:latest
```

#### kafka-controller-1

```sh
kubectl apply -f kafka-controller-1.yaml
```

#### kafka-broker-1

```sh
kubectl apply -f kafka-broker-1.yaml
```

### prometheus

```sh
docker build -t local.registry.com:32555/prometheus:latest ./prometheus/
```

```sh
docker push local.registry.com:32555/prometheus:latest
```

```sh
kubectl apply -f prometheus-1.yaml
```
