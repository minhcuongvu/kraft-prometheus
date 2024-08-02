#!/bin/bash
# KRaft

# Generate a Cluster UUID
KAFKA_CLUSTER_ID=$(bin/kafka-storage.sh random-uuid)

# Format Log Directories
bin/kafka-storage.sh format -t "$KAFKA_CLUSTER_ID" -c config/kraft/server.properties --ignore-formatted

# Start the Kafka Server
KAFKA_OPTS="-javaagent:/opt/kafka/jmx_prometheus_javaagent-1.0.1.jar=7071:/opt/kafka/kafka-jmx-exporter.yml" bin/kafka-server-start.sh config/kraft/server.properties