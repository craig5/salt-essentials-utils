#!/bin/bash
srcDir=/srv/se-book/example-data/states/11-watch
fileRoot=/srv/salt/file/base
confDir=/etc/master.d

sudo mkdir -p $fileRoot

sudo rsync -Cavz --delete $srcDir/file-base/ $fileRoot
sudo rsync -Cavz --delete $srcDir/master.d/ $confDir
