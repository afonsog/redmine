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
        if [ -d $j ]; then #Si la carpeta existe, no se clonara el respositorio
            comando=""       
            break
        else
            comando+=" $j"
        fi
    done
    $comando
    IFS=$'\n'
done
