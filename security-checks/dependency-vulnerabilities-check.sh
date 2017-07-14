#!/bin/bash

empty_vulnerability_list="[]"

output="$(./node_modules/.bin/nsp check --output json)"

if [ "${output}" = "$empty_vulnerability_list" ]
then
   echo "No vulnerability found"
   exit 0
else
   echo "Your app might be vulnerable"
   exit 1
fi
