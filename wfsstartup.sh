#!/bin/sh
NOW=$(date +"%b-%d-%y")
LOGFILE="wfs_logs/wfs-$NOW.log"
exec >> $LOGFILE 2>&1
echo
echo
echo "####################################################################"
echo `date`
echo "####################################################################"
echo starting jack;
jackd -d alsa -r 44100&
sleep 4;
echo starting scsynth;
scsynth -u 57110 &
