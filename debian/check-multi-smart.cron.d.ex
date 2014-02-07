#
# Regular cron jobs for the check-multi-smart package
#
0 4	* * *	root	[ -x /usr/bin/check-multi-smart_maintenance ] && /usr/bin/check-multi-smart_maintenance
