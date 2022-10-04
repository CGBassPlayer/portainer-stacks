#!/bin/bash

for i in $(find stacks -type f -name *.env)
  do
    ansible-vault encrypt $i  --vault-password-file vault-pass.txt && echo $i encrypted
  done

echo "Files encrypted"
