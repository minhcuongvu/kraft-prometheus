# docker-compose down && docker-compose build --no-cache && docker-compose -p cluster up -d
docker-compose -p cluster up -d --build

# kafka-broker-api-versions.sh --bootstrap-server kafka-broker-1:9092