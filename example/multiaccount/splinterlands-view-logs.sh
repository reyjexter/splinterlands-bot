#!/bin/sh

base_dir=$(pwd)

for folder in */ ; do
    account_dir=$base_dir/$folder
    cd $account_dir
    echo ""
    echo "-----------------------------------------------------------"
    echo "Viewing logs of $folder"

    docker logs $(cat cid)
    echo ""
done

