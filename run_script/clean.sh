#!/bin/bash
kill -9 $(ps -ef | grep Scheduler | grep -v grep | awk '{print $2}')
kill -9 $(ps -ef | grep Worker | grep -v grep | awk '{print $2}')
kill -9 $(ps -ef | grep GraphTracker | grep -v grep | awk '{print $2}')

