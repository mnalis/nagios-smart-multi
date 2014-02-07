The Debian Package check-multi-smart
----------------------------

Additional S.M.A.R.T. checks for nagios
Uses multiple tools to check advanced S.M.A.R.T. status of disks, 
and by default check all disks in system unless you want some ignored.

Extra plugins used by check_multi_smart were taken from:
check_smartmon: https://www.monitoringexchange.org/inventory/Check-Plugins/Operating-Systems/Linux/check_smartmon
check_smart: http://exchange.nagios.org/directory/Plugins/System-Metrics/Storage-Subsystem/Check-SMART-status-modified/details
Also uses /usr/lib/nagios/plugins/check_ide_smart from nagios-plugins-basic package in Debian Squeeze

see nrpe.cfg and sudoers.cfg for default configuration for Debian

 -- Matija Nalis <mnalis-debian@axe.tomsoft.hr>  Fri, 07 Feb 2014 19:31:19 +0100
