echo "Create database in Influx..."

docker exec influx influx -execute "CREATE DATABASE loadrunner"

echo "Create topic in Kafka..."

docker exec kafka kafka-topics.sh \
 --bootstrap-server localhost:9092 \
 --topic loadrunner \
 --create \
 --partitions 3 \
 --replication-factor 1
