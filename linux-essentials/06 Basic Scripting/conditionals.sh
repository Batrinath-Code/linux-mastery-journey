#!/bin/bash

if grep -q root /etc/passwd; then
    echo root is in the password file
else
    echo root is missing from the password file
fi

if test -x "$(which lss)";then
    echo "ls is executable"
else
    echo "ls is not executable"
fi