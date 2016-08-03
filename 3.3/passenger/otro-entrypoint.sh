#!/bin/bash

set -e
IFS=$'\n'

#urls=( "git://github.com/alexandermeindl/redmine_tweaks.git plugins/redmine_tweaks" "url2" "url3" )
urls=$PLUGINS
pwd
for i in ${urls[@]}; do
    comando="git clone"
    IFS=$' '
    for j in ${i[@]}; do
        comando+=" $j"
    done
    $comando
    IFS=$'\n'
done
