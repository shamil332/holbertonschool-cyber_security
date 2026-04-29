#!/bin/bash
host="$1"
nmap --script=default "$host"
