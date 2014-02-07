PLUGIN_DIR=$(DESTDIR)/usr/lib/nagios/plugins
all:
	@echo 'use "make install"' to install
	
install:
	test -d $(PLUGIN_DIR) || install -o root -g root -d $(PLUGIN_DIR)
	install -o root -g root -m 0755 check_multi_smart  check_smart check_smartmon $(PLUGIN_DIR)
	sed -e 's,/home/mnalis/tomsoft_source/check-multi-smart-1.0,,' < check_multi_smart > $(PLUGIN_DIR)/check_multi_smart
		
clean:
	find . -name "*~" -print0 | xargs -0r rm -f --
