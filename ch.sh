#!/usr/bin/env bash
languages=`echo "golang python" | tr ' ' '\n'`

selected=`printf "$languages\n" | fzf`
read -p "query: " query
