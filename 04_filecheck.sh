#!/bin/bash
today=`date +%m%d`
ls -l $HOME | grep ^- | awk '{ print $9, "\t", $5 }' > "04_#$today"
# ^- : common file
# ^  : all of file (even directory file)
