#!/bin/bash
cat logs.txt | awk {'print $1'} | sort | uniq -c | sort -r | head -n 1 | awk {'print $1'}
