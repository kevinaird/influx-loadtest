echo "runId=$1"
docker logs --tail 100 simple-stats > $1/simple-stats.log 2>&1
docker logs --tail 100 jmeter > $1/jmeter.log 2>&1
docker logs --tail 100 influx > $1/influx.log 2>&1
