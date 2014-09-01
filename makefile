#
DEFAULT: help
.DEFAULT: help

VENV_DIR = venv


help:
	@echo "Choose from the following:"
	@echo "	virtualenv	Create a virtualenv (in $(VENV_DIR))"
	@echo "	clean		Delete various development files and dirs."
	@echo "	help		This message."

virtualenv:
	virtualenv -p /usr/bin/python $(VENV_DIR)
	$(VENV_DIR)/bin/pip install -r requirements.txt

clean:
	rm -rf $(VENV_DIR)
	rm -rf build

# End of file.
