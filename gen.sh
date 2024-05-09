#!/bin/bash
s="config"
t="target"

# shellcheck disable=SC2045
for item in $(ls -f config*)
do
  char=${item:0:1}
if [ "$item" != "global" ] && [ "$char" != "_" ] && [ "$char" != "." ]; then
    echo "$item"
    adduce -c "$s/$item" -n "$item.html" -o $t
  fi
done

