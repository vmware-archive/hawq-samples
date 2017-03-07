#!/bin/bash 

# get script directory
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# set datafile directory - makes assumptions
DDIR=$CURDIR/../../../datasets/retail
DATADIR=$(readlink -m $DDIR)

HDFS_BASEDIR="/retail_demo"

# clean up if data was previous loaded
echo "running: sudo -u hdfs hdfs -rm -r -f -skipTrash $HDFS_BASEDIR"
sudo -u hdfs hdfs dfs -rm -r -f -skipTrash $HDFS_BASEDIR

# create directory on hdfs
sudo -u hdfs hdfs dfs -mkdir $HDFS_BASEDIR

# load all of the dimension tables to HDFS
for file in $DATADIR/*_dim.tsv.gz $DATADIR/payment_methods.tsv.gz
do
  #echo "file is $file"
  basefile=$(basename $file)
  #echo "basefile is $basefile"
  dir=`echo $basefile | perl -ne 's/^(.+?)\..+$/$1/;print;'`
  #echo "dir is $dir"
  echo "sudo -u hdfs hdfs dfs -mkdir $HDFS_BASEDIR/$dir"
  sudo -u hdfs hdfs dfs -mkdir $HDFS_BASEDIR/$dir
  echo "sudo -u hdfs hdfs dfs -put $file $HDFS_BASEDIR/$dir/"
  sudo -u hdfs hdfs dfs -put $file $HDFS_BASEDIR/$dir/
done

