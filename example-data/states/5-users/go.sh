#!/bin/bash
srcDir=/srv/se-book/example-data/states/5-users
fileRoot=/srv/salt/file/base

sudo mkdir -p $fileRoot/users
rm -f $fileRoot/user-wilma.sls

cp $srcDir/top.sls $fileRoot
cp $srcDir/fred.sls $fileRoot/users/
cp $srcDir/wilma.sls $fileRoot/users/
cp $srcDir/barney.sls $fileRoot/users/
cp $srcDir/betty.sls $fileRoot/users/
cp $srcDir/dba.sls $fileRoot/users/
cp $srcDir/qa.sls $fileRoot/users/
cp $srcDir/all.sls $fileRoot/users/
