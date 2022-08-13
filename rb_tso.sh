#! /bin/bash

FILE="$1"

cat $FILE|awk '{print $7}'|awk -F'[\t/]' '{print $3}'|sort -u|wc -l
cat $FILE|awk '{somabytes+=$5}END{print somabytes}'
cat $FILE|awk '{print $4}'|awk -F'[\t/]' '($1 == "TCP_HIT") {i++ }END{print i}'
cat $FILE|awk '{print $4}'|awk -F'[\t/]' '($1 == "TCP_MISS") {i++ }END{print i}'
cat $FILE|awk '{print $4}'|awk -F'[\t/]' '($1 == "TCP_DENIED") {i++ }END{print i}'
cat $FILE|awk '{print $4}'|awk -F'[\t/]' '($1 == "TCP_REFRESH_UNMODIFIED") {i++ }END{print i}'
cat $FILE|awk '{print $1}'|awk '($1 >= 1657957478 && $1 <= 1657957490) {i++}END{print i}'
