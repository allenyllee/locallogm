#!/bin/bash
# to compress 2 days old logs
find /var/log/syslogng/ -name "*.log" -daystart -ctime +2 -type f -exec gzip {} \;
# to remove 14 days old logs
find /var/log/syslogng/ -name "*.gz" -daystart -ctime +14 -type f -exec rm {} \; 

