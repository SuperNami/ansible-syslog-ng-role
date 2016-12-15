syslog-ng: install

install: install-repository configure
compile: compile-source install-systemd configure

install-repository:
	# Install
	ansible-playbook main.yml -i localhost -t install_syslog_ng

compile-source:
	# Install from source
	ansible-playbook main.yml -i localhost -t install_syslog_ng_source

install-systemd:
	# Install systemd script
	ansible-playbook main.yml -i localhost -t install_syslog_ng_systemd

configure:
	# Configure
	ansible-playbook main.yml -i localhost -t configure_syslog_ng
