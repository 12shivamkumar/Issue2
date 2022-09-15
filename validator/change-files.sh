#!/bin/sh

declare -a files_list
files_list=$1

declare -A schema_list
for i in ${files_list[*]}
do
if [[ "$i" =~ ^schema.* ]]; then
  key=$(echo $i | cut -d'/' -f 2-)
  schema_list["${key}"]=$i
fi
done


change_in_db_files=false
if [[ ${#schema_list[@]} -gt 0 ]]; then
  change_in_db_files=true
fi

echo "::set-output name=schema_files::" "${schema_list[@]}"
echo "::set-output name=db_file_change_exists::$change_in_db_files"
