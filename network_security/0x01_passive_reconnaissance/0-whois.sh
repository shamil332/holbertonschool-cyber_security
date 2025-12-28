#!/bin/bash
whois "$1" | awk '
/^(Registrant|Admin|Tech)/ {
  split($0,a,": ")
  printf "%s,%s\n", a[1], a[2]
}' > "$1.csv"
