#!/usr/bin/env sh
for file in workspace-*.sh
do
  sh $file &>/dev/null
done
