#!bin/sh

/configure.sh ${ZOOKEEPER_SERVICE_HOST:-$1} ${NIMBUS_SERVICE_HOST:-$2}

exec /usr/local/storm/apache-storm-0.9.3/bin/storm  jar storm-example/storm-starter-*.jar storm.starter.RollingTopWords starter remote
sleep 50000
