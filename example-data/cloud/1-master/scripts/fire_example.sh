#!/bin/bash
sudo salt-call event.fire_master \
	'{"data": "data from the minion"}' \
	'example/my_tag'
