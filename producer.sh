docker build -t kafka-producer ./producer

echo "Type something to send to the consumer:"

docker run --rm -it --name kafka-producer --network cluster_kafka-network kafka-producer /bin/bash -c "bin/kafka-console-producer.sh --broker-list kafka-broker-1:9092 --topic test"