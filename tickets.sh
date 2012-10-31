#!/bin/sh

from=$(git describe master --abbrev=0)
to="master"
oneline=false
alias="log"

while :
do
    case $1 in
        -t | --to)
            to=$2
            shift 2
            ;;
        -f | --from)
            from=$2
            shift 2
            ;;
        --oneline)
            oneline=true
            shift 1
            ;;
        -a | --alias)
            alias=$2
            shift 2
            ;;
        *)
            break
            ;;
    esac
done

if $oneline ; then
    git cherry "$from" "$to" -v | sed -n -e '/#[0-9]/p' | awk '{system("git '''$alias''' --oneline " $2 " -1")}'
else
    git cherry "$from" "$to" -v | sed -n -e '/#[0-9]/p' | awk '{system("git '''$alias''' " $2 " -1")}'
fi

