#!/bin/bash

use(){
    local parse_path=$(echo $1 | sed "s|::|/|g")
    local source_path_origin=$(echo $parse_path.sh)
    source $source_path_origin
}


