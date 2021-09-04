#!/bin/bash
echo "$@"
/bin/chown root:root /etc/logrotate.d/syslogng-logrotate.conf
/bin/chmod 644 /etc/logrotate.d/syslogng-logrotate.conf
/etc/init.d/cron start
/usr/sbin/syslog-ng "$@"
