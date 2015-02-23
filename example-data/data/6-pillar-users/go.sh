#!/bin/bash
srcDir=/srv/se-book/example-data/data/6-pillar-users
fileRoot=/srv/salt/file/base
pillarRoot=/srv/salt/pillar/base
confDir=/etc/salt/master.d

sudo mkdir -p $fileRoot
sudo mkdir -p $pillarRoot

sudo rsync -Cavz --delete $srcDir/master.d/ $confDir
sudo rsync -Cavz --delete $srcDir/file-base/ $fileRoot
sudo rsync -Cavz --delete $srcDir/pillar-base/ $pillarRoot
