echo "runId=$1"
docker logs --tail 100 simple-stats > $1/simple-stats.log 2>&1
docker logs --tail 100 jmeter > $1/jmeter.log 2>&1
docker logs --tail 100 influx > $1/influx.log 2>&1
docker logs --tail 100 kafka > $1/kafka.log 2>&1
docker logs --tail 100 vector > $1/vector.log 2>&1
docker logs --tail 100 kafka-rest > $1/kafka-rest.log 2>&1
