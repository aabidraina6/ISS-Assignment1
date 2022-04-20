#!/bin/bash

sed -r -i '/^$/d' "$1" quotes.txt
awk -i inplace 'seen[$0]++' quotes.txt
