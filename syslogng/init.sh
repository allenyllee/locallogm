#!/bin/bash
echo "$@"
/etc/init.d/cron start
/usr/sbin/syslog-ng "$@"
