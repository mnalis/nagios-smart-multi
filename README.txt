The Debian Package nagios-smart-multi
----------------------------

Additional S.M.A.R.T. checks for nagios
Uses multiple tools to check advanced S.M.A.R.T. status of disks, 
and by default check all disks in system unless you want some ignored.

Extra plugins used by check_multi_smart were taken from:
check_smartmon: https://www.monitoringexchange.org/inventory/Check-Plugins/Operating-Systems/Linux/check_smartmon
check_smart: http://exchange.nagios.org/directory/Plugins/System-Metrics/Storage-Subsystem/Check-SMART-status-modified/details
Also uses /usr/lib/nagios/plugins/check_ide_smart from nagios-plugins-basic package in Debian Squeeze

If you need to ignore one or more of the sub-plugins (check_smartmon,
check_smart, and/or check_ide_smart) for some problematic disk (USB HDDs do
not always support full complement of S.M.A.R.T. commands, or even any of
them), you can ignore it by:

cp /usr/share/doc/nagios-smart-multi/examples/check_multi_smart.ignore /etc
joe /etc/check_multi_smart.ignore

Try to ignore only the problematic plugin, and not all of them if possible.
The file format is self-documented in its comments.

Default configurations nrpe.cfg and sudoers.cfg are automatically installed in Debian

 -- Matija Nalis <mnalis-debian@axe.tomsoft.hr>  Fri, 07 Feb 2014 19:31:19 +0100
