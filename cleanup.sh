docker logs --tail 100 simple-stats > ${{ github.run_id }}/simple-stats.log 2>&1
docker logs --tail 100 jmeter > ${{ github.run_id }}/jmeter.log 2>&1
docker logs --tail 100 influx > ${{ github.run_id }}/influx.log 2>&1
