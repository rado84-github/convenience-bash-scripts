#!/usr/bin/env bash

for name in *.cab;
do
7z x "$name" -aoa
done;
