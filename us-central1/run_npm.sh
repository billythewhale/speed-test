#!/bin/bash

npm install --timing @tw/cli

DEBUG_LOG=`ls /root/.npm/_logs/*-debug*.log | tail -n 1`
TIMING_LOG=`ls /root/.npm/_logs/*-timing*.log | tail -n 1`
cp $LOGFILE /root/us-central1-first-run-debug.log
cp $TIMING_LOG /root/us-central1-first-run-timing.log

rm -rf /root/node_modules
rm -rf /root/package*

npm install --timing @tw/cli

DEBUG_LOG=`ls /root/.npm/_logs/*-debug*.log | tail -n 1`
TIMING_LOG=`ls /root/.npm/_logs/*-timing*.log | tail -n 1`
cp $LOGFILE /root/us-central1-second-run-debug.log
cp $TIMING_LOG /root/us-central1-second-run-timing.log

rm -rf /root/node_modules
rm -rf /root/package*

