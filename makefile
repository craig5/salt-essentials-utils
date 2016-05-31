#
DEFAULT: help
.DEFAULT: help

VENV_DIR = venv
RPMFORGE_KEY = http://apt.sw.be/RPM-GPG-KEY.dag.txt
RPMFORGE_URL = http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
EPEL_URL = http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

BOOTSTRAP_URL = https://bootstrap.saltstack.com
BOOTSTRAP_FILE = /tmp/bootstrap-salt.sh
MASTER_IP = 172.31.0.11


help:
	@echo "Choose from the following:"
	@echo "	master		Set up the salt master."
	@echo "	develop		Create a virtualenv (in $(VENV_DIR))"
	@echo "	clean		Delete various development files and dirs."
	@echo "	help		This message."

_base_rpms:
	sudo rpm --import $(RPMFORGE_KEY)
	@# Use '--replacepkgs' so the command can be run many times.
	sudo rpm -i --replacepkgs $(RPMFORGE_URL)
	sudo rpm -i --replacepkgs $(EPEL_URL)
	sudo yum update -y
	sudo yum install -y python-virtualenv.noarch

master: _base_rpms
	wget --no-check-certificate $(BOOTSTRAP_URL) -O $(BOOTSTRAP_FILE)
	sudo bash $(BOOTSTRAP_FILE) -M -U -A $(MASTER_IP)

minion:
	wget --no-check-certificate $(BOOTSTRAP_URL) -O $(BOOTSTRAP_FILE)
	sudo bash $(BOOTSTRAP_FILE) -U -A $(MASTER_IP)

master-manual: _master_rpms
	sudo yum install -y salt-minion salt-master
	sudo mkdir -p /etc/salt/minion.d/
	sudo bash -c 'echo "master: $(MASTER_IP)" > /etc/salt/minion.d/master.conf'
	sudo chkconfig --add salt-master
	sudo chkconfig --add salt-minion
	sudo service salt-master start
	sudo service salt-minion start

develop:
	virtualenv -p /usr/bin/python $(VENV_DIR)
	$(VENV_DIR)/bin/pip install -r requirements.txt
	$(VENV_DIR)/bin/python setup.py develop

clean:
	rm -rf $(VENV_DIR)
	rm -rf build
	rm -rf dist

# End of file.
