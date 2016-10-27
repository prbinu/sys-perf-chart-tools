#!/bin/bash

# Copyright (c) 2016, Yahoo Inc.
# Copyrights licensed under the New BSD License. See the
# accompanying LICENSE.txt file for terms.

while read line; do
  echo "reading: ${line}"
done < /dev/stdin
