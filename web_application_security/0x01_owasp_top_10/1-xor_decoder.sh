#!/bin/bash
hash="$1"
clean="${hash#\{xor\}}"
echo "$clean" | base64 --decode 2>/dev/null | while IFS= read -r -n1 char
do
    byte=$(printf "%d" "'$char")
    xored=$((byte ^ 0x5F))
    printf "\\x%02x" "$xored"
done | xargs printf "%b\n"
