#!/usr/bin/env bash

cat data/Schöpfungshöhe.txt \
| sed "s/\W/\n/g" \
| sed "s/[0-9]*//" \
| sed "/^$/d" \
| tr [:upper:]ÖÜÄ [:lower:]öüä \
| sed "/^.$/d" \
| sort \
| uniq --count \
| sort -n
