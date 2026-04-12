#!/bin/bash
cat logs.txt | awk {'print $7'} | sort | uniq -c | sort -r | awk {'print $2'}
