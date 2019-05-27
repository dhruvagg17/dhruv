#!/usr/bin/env bash
csvgrep -c Origin -m SFO flightdelays.csv | csvcut -c ArrDelay | head -n 4 > first3sfo.csv
csvlook first3sfo.csv
cut -d"," -f 18 flightdelays.csv | sort -r | uniq -c | sort -nr | head -n 3 | csvlook -H
