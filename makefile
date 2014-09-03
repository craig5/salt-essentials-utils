#
DEFAULT: help
.DEFAULT: help

VENV_DIR = venv


help:
	@echo "Choose from the following:"
	@echo "	develop		Create a virtualenv (in $(VENV_DIR))"
	@echo "	clean		Delete various development files and dirs."
	@echo "	help		This message."

develop:
	virtualenv -p /usr/bin/python $(VENV_DIR)
	$(VENV_DIR)/bin/pip install -r requirements.txt
	$(VENV_DIR)/bin/python setup.py develop

clean:
	rm -rf $(VENV_DIR)
	rm -rf build
	rm -rf dist

# End of file.
