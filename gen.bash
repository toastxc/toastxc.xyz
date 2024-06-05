#!/bin/bash
s="config"
t="target"


mkdir -p $t

# shellcheck disable=SC2045
for item in $(ls -f config*)
do
  char=${item:0:1}
if [ "$item" != "global" ] && [ "$char" != "_" ] && [ "$char" != "." ]; then
    echo "$item"

  if [ "$item" != "index" ]; then
  mkdir -p "$t/$item"
      adduce -c "$s/$item" -n "index.html" -o "$t/$item"
  else
    adduce -c "$s/$item" -n "$item.html" -o $t
    fi
  fi
done

