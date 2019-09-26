#
# Regular cron jobs for the vscp-driver-l1-logger package
#
0 4	* * *	root	[ -x /usr/bin/vscp-driver-l1-logger_maintenance ] && /usr/bin/vscp-driver-l1-logger_maintenance
