#!/bin/bash
echo "$@"
/bin/cp /syslogng/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf
/bin/cp /syslogng/syslogng-logrotate.conf /etc/logrotate.d/syslogng-logrotate.conf
/bin/chown root:root /etc/logrotate.d/syslogng-logrotate.conf
/bin/chmod 644 /etc/logrotate.d/syslogng-logrotate.conf
# /usr/sbin/logrotate -df /etc/logrotate.d/syslogng-logrotate.conf # only for debug use
apt-get update && apt-get install -y cron
/etc/init.d/cron start
/usr/sbin/syslog-ng "$@"
