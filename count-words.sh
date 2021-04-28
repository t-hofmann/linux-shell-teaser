#!/usr/bin/env bash

cat data/Schöpfungshöhe.txt \
| sed "s/\W/\n/g" \
| grep -v "^.$" \
| grep -v "^[0-9]*$" \
| sort \
| uniq --count \
| sort -n
