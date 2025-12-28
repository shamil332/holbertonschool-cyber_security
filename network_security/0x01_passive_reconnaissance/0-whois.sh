#!/bin/bash
whois "$1" | awk '/^(Registrant|Admin|Tech)/{if($0~/(Phone Ext|Fax Ext)/){sub(/:.*/,""); printf "%s:, \n",$0}else if($0~/(Fax:)/){sub(/:.*/,""); printf "%s, \n",$0}else{split($0,a,":"); printf "%s,%s\n",a[1],substr($0,index($0,a[2]))}}' > "$1.csv"
