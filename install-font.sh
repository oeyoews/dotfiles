#!/usr/bin/env bash

set -x

main() {

fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
  echo "mkdir -p $fonts_dir"
  mkdir -p "${fonts_dir}"
else
  echo "Found fonts dir $fonts_dir"
fi

# TODO??? raw no this folder
for type in Bold Light Medium Regular Retina; do
  file_path="${HOME}/.local/share/fonts/FiraCode-${type}.ttf"
  file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
  if [ ! -e "${file_path}" ]; then
    echo "wget -O $file_path $file_url"
    wget -O "${file_path}" "${file_url}"
  else
    echo "Found existing file $file_path"
  fi;
done

echo "fc-cache -f"
#fc-cache -f && mkfontscale && mkfontdir
# TODO: it will generate some files in current dir
fc-cache -f
}

main
