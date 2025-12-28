#!/bin/bash
whois "$1" | awk '/^(Registrant|Admin|Tech)/{sub(/^ +/,""); split($0,a,":"); printf "%s,%s\n",a[1],substr($0,index($0,a[2]))}' > "$1.csv"
