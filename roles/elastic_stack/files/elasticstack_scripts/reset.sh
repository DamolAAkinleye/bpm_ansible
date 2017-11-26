#!/bin/bash

echo 'stop filebeat'
./filebeat.sh stop
echo 'stop logstash'
./logstash.sh stop
echo 'reset'
sudo rm -f /var/lib/filebeat/registry
sudo rm -f /var/log/filebeat/filebat
sudo rm -f /var/log/logstash/logstash-plain.log
curl -XDELETE 'localhost:9200/_all'
