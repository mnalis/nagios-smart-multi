all:
	@echo 'use "make install"' to install
	
install:
	install -o root -g root -m 0755 check_multi_smart  check_smart check_smartmon /usr/local/bin/
		
	