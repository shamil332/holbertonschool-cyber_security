#!/bin/bash
hash="$1"
clean="${hash#\{xor\}}"
decoded=$(echo "$clean" | base64 --decode 2>/dev/null)
result=""
while IFS= read -r -n1 char; do
    byte=$(printf "%d" "'$char")
    xored=$(( byte ^ 0x5F ))
    result+=$(printf "\\x%02x" "$xored")
done <<< "$decoded"
echo -e "$result"

