#!/bin/bash

npm install --timing @tw/cli@0.1.91-beta.2

DEBUG_LOG=`ls ./.npm/_logs/*-debug-0.log | tail -n 1`
TIMING_LOG=`ls ./.npm/_logs/*-timing.json | tail -n 1`
echo "Debug log is $DEBUG_LOG"
echo "Timing log is $TIMING_LOG"
cp $DEBUG_LOG ./us-first-run-debug.log
cp $TIMING_LOG /root/us-first-run-timing.json

rm -rf /root/node_modules
rm -rf /root/package*

npm install --timing @tw/cli@0.1.91-beta.2

DEBUG_LOG=`ls ./.npm/_logs/*-debug-0.log | tail -n 1`
TIMING_LOG=`ls ./.npm/_logs/*-timing.json | tail -n 1`
echo "Debug log is $DEBUG_LOG"
echo "Timing log is $TIMING_LOG"
cp $DEBUG_LOG /root/us-second-run-debug.log
cp $TIMING_LOG /root/us-second-run-timing.json

rm -rf /root/node_modules
rm -rf /root/package*

