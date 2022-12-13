![docker image build](https://github.com/kevinaird/influx-loadtest/actions/workflows/benchmark.yml/badge.svg)

# Influx 4 Load Tests Stack Benchmarking

Purpose of this project is to design a repeatable way to measure the performance of writing a huge number of records to influx db in various patterns.

## About the testing stack

- *jmeter* executes the load test. Ramps up to 4000 parallel threads in 200 sec and holds there for 300 sec.
- *cadvisor* a prometheus exporter for container metrics
- *kafka-exporter* a prometheus exporter for kafka
- *simple-stats* a custom tool that pulls stats from the prometheus exporters, docker top/stats commands, queries influx for record count, and checks kafka topic offsets. All on a 5 sec interval and then dumps all of that data to a csv file which is pushed to a github page --> http://kevinaird.github.io/simple-stats/build/

## Patterns to be tested

### 1. Influx

- Branch: TBD

### 2. Influx-proxy + Influx

- Branch: TBD

### 3. Influx Cluster

- Branch: TBD

### 4. Kafka + Influx

- Branch: *main*
- Components under test:
    - *rest-proxy* is the http endpoint our load test persists the write metrics to.
    - *kafka* - rest proxy adds the messages into the "loadrunner" topic in kafka
    - *vector* is used to consume messages from the kafka "loadrunner" topic and send the writes to influxdb
    - *influxdb* stores all the metrics
