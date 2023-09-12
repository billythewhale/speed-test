#!/bin/bash

npm install --timing @tw/cli@0.1.91-beta.2

DEBUG_LOG=`ls /root/.npm/_logs/*-debug*.log | tail -n 1`
TIMING_LOG=`ls /root/.npm/_logs/*-timing*.log | tail -n 1`
cp $LOGFILE /root/us-first-run-debug.log
cp $TIMING_LOG /root/us-first-run-timing.log

rm -rf /root/node_modules
rm -rf /root/package*

npm install --timing @tw/cli@0.1.91-beta.2

DEBUG_LOG=`ls /root/.npm/_logs/*-debug*.log | tail -n 1`
TIMING_LOG=`ls /root/.npm/_logs/*-timing*.log | tail -n 1`
cp $LOGFILE /root/us-second-run-debug.log
cp $TIMING_LOG /root/us-second-run-timing.log

rm -rf /root/node_modules
rm -rf /root/package*

