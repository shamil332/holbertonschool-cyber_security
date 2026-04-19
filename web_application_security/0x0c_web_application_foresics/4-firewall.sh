#!/bin/bash
grep -i "iptables -A" auth.log | awk {'print $20'} | wc -l
