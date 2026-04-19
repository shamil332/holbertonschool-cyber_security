#!/bin/bash
grep -i "accepted password" auth.log | awk {'print $11'} | sort | uniq -u
