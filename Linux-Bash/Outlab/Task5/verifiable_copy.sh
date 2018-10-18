#!/bin/bash


cat "$1" | tee >( md5sum | sed "s,-,$2,g" >"$2.md5") | cat >"$2"

md5sum -c "$2.md5"
