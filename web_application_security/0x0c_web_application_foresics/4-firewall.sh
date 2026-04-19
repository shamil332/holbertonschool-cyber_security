#!/bin/bash
grep -i "ufw allow" auth.log | wc -l
