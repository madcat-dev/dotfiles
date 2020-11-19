#!/bin/sh

rcopy() {
    if [ ! -e "${1}" ]; then
        echo -e "\033[31m -  path ${1} not exists\033[0m"
        exit 1
    fi

    if [ -d "${1}" ]; then
        for item in $(ls -a "${1}")
        do
            if [[ $item = . || $item = .. ]]; then
                continue
            fi

            rcopy "${1}/${item}" "${2}/${item}"
        done
    else
        if [ -e "${2}" ]; then
            DIFF=$((`date -r "${1}" '+%s'` - `date -r "${2}" '+%s'`))

            if [ $DIFF -eq 0 ]; then
                echo -e " -  path ${2} not modified"
            else
                cp -xarf "${1}" "${2}" && \
                    echo -e "\033[33m -  path ${2} was modified\033[0m"
            fi
        else
            mkdir -p "$(dirname ${2})" > /dev/null 2>&1
            cp -xarf "${1}" "${2}" && \
                echo -e "\033[32m -  copy: ${1} to ${2}\033[0m"
        fi
    fi
}
