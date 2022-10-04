#!/bin/bash

for i in $(find stacks -type f -name *.env)
  do
    ansible-vault decrypt $i  --vault-password-file vault-pass.txt && echo $i decrypted
  done

echo "Files decrypted"
