#!/usr/bin/env bash

search_dir=<dir_to_packages>
valid_files=$(ls ${search_dir} | grep 'x86_64')

for entry in $valid_files
do
    full_path="${search_dir}/${entry}"
    #echo $full_path

    curl -v --user 'admin:password' --upload-file $full_path http://<ip>:<port>/repository/yum-hosted-rhel/8/AppStream/x86_64/os/Packages/$entry	
done
