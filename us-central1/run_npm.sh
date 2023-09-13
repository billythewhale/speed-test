#!/bin/bash

npm install --timing @tw/cli

DEBUG_LOG=$( ls ./.npm/_logs/*-debug-0.log | tail -n 1 )
TIMING_LOG=$( ls ./.npm/_logs/*-timing.json | tail -n 1 )
echo "Debug log is $DEBUG_LOG"
echo "Timing log is $TIMING_LOG"
cp $DEBUG_LOG /root/us-central1-first-run-debug.log
cp $TIMING_LOG /root/us-central1-first-run-timing.json

rm -rf /root/node_modules
rm -rf /root/package*

npm install --timing @tw/cli

DEBUG_LOG=$( ls ./.npm/_logs/*-debug-0.log | tail -n 1 )
TIMING_LOG=$( ls ./.npm/_logs/*-timing.json | tail -n 1 )
echo "Debug log is $DEBUG_LOG"
echo "Timing log is $TIMING_LOG"
cp $DEBUG_LOG /root/us-central1-second-run-debug.log
cp $TIMING_LOG /root/us-central1-second-run-timing.json

rm -rf /root/node_modules
rm -rf /root/package*

