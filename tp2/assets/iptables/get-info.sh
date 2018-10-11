#!/bin/bash

echo "*** ifconfig ***" \
&& ifconfig \
&& echo -e "\n***netstat -nr ***" \
&& netstat -nr \
&& echo -e "\n***netstat -natp (TCP)***" \
&& netstat -natp \
&& echo -e "\n***netstat -naup (UDP)***" \
&& netstat -naup 
