#!/bin/sh

base_dir=$(pwd)
external_port=10000
echo "Running splinterlands multi account..."
echo "Base dir: $base_dir"

for folder in */ ; do
    account_dir=$base_dir/$folder
    cd $account_dir
    rm -f ./cid
    echo "Running splinterlands bot on $folder on port $external_port"
    docker run -d -p $external_port:80 -v $account_dir.env:/app/.env --cidfile ./cid splinterlands-bot
    external_port=$(expr $external_port + 1)
done

