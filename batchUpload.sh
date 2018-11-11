#!/bin/bash

packs=$1; shift

if [ ! -d "$packs" ]; then
  echo "Usage: $0 <path_to_packs> [-s <subdomain>] [-e <email>] [-p <password>] [...args]"
  yarn emojipacks --help
  exit 1
fi

for pack in "$packs"/*.yaml; do
  pack="$(dirname $pack)/$(basename $pack)"
  echo "Uploading $(basename $pack) (emojipacks -y \"$pack\" $@)"
  yarn emojipacks -y "$pack" $@
done
