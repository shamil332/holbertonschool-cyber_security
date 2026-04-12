#!/bin/bash
cat logs.txt | awk {'print $1'} | sort | uniq -c | sort | tail -n 1 | awk {'print $2'}
