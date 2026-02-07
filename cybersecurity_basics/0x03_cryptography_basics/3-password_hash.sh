#!/bin/bash
RANDOM_VAL=$(openssl rand -hex 8)
echo -n "$1$RANDOM_VAL" | openssl dgst -sha512 > 3_hash.txt
