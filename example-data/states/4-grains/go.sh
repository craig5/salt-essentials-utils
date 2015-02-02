#!/bin/bash
srcDir=/srv/se-book/example-data/states/4-grains
fileRoot=/srv/salt/file/base

sudo mkdir -p $fielRoot/default
rm -f $fileRoot/default/packages.sls

cp $srcDir/top.sls $fileRoot
cp $srcDir/vim.sls $fileRoot/default
cp $srcDir/vim-enhanced.sls $fileRoot/default
