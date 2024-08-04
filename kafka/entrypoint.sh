#!/bin/bash

# Define the log file
LOG_FILE="init.log"

# KRaft
# Function to log both to console and file
log() {
  echo "$1" | tee -a $LOG_FILE
}

# KRaft
log "HOSTNAME=$HOSTNAME"
log "PORT=$PORT"
log "NODE_ID=$NODE_ID"

# Replace placeholders in server.properties
envsubst < config/kraft/server.properties.template > config/kraft/server.properties

cat config/kraft/server.properties

# Log the generated Cluster UUID
# KAFKA_CLUSTER_ID=$(bin/kafka-storage.sh random-uuid)
KAFKA_CLUSTER_ID=3SIJT0pEQKW3veTmmhu8WA
log "KAFKA_CLUSTER_ID=$KAFKA_CLUSTER_ID"

# Format Log Directories and log the output
bin/kafka-storage.sh format -t "$KAFKA_CLUSTER_ID" -c config/kraft/server.properties --ignore-formatted 2>&1 | tee -a $LOG_FILE

# Start the Kafka Server
KAFKA_OPTS="-javaagent:/opt/kafka/jmx_prometheus_javaagent-1.0.1.jar=$PORT:/opt/kafka/kafka-jmx-exporter.yml" bin/kafka-server-start.sh config/kraft/server.properties