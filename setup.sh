echo "Create database in Influx..."

docker exec influx influx -execute "CREATE DATABASE loadrunner"

