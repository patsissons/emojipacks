#!/bin/bash

subdomain=$1
email=$2
password=$3

# if [[ $1 -eq 0 ]] ; then
#   path='./packs'
# else
#   path="$1"
# fi

for f in "$4"/*.yaml
do
  echo $f
  yarn emojipacks -s $subdomain -e $email -p $password -y $f;
done
