PLUGIN_DIR=$(DESTDIR)/usr/lib/nagios/plugins

all:
	@echo 'use "make install" to install'
	
install: install_bin install_etc
	@echo finished.

install_bin:
	test -d $(PLUGIN_DIR) || install -o root -g root -d $(PLUGIN_DIR)
	install -o root -g root -m 0755 check_multi_smart  check_smart check_smartmon $(PLUGIN_DIR)
	sed -e 's,/home/mnalis/tomsoft_source/check-multi-smart-1.0,,' < check_multi_smart > $(PLUGIN_DIR)/check_multi_smart
	
install_etc:	
	test -d  $(DESTDIR)/etc/sudoers.d || install -o root -g root -m 0755 -d $(DESTDIR)/etc/sudoers.d
	install -o root -g root -m 0440 sudoers.cfg $(DESTDIR)/etc/sudoers.d/check-multi-smart
	test -d  $(DESTDIR)/etc/nagios/nrpe.d || install -o root -g root -m 0755 -d $(DESTDIR)/etc/nagios/nrpe.d
	install -o root -g root -m 0644 nrpe.cfg $(DESTDIR)/etc/nagios/nrpe.d/check-multi-smart.cfg
	#install -o root -g root -m 0644 examples/check_multi_smart.ignore $(DESTDIR)/etc/check_multi_smart.ignore
		
clean:
	find . -name "*~" -print0 | xargs -0r rm -f --
