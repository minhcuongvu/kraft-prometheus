docker build -t kafka-consumer ./consumer

echo "Receiving messages from producer(s)"

docker run --rm -it --name kafka-consumer --network cluster_kafka-network kafka-consumer /bin/bash -c "bin/kafka-console-consumer.sh --bootstrap-server kafka-broker-1:9092 --topic test --from-beginning"