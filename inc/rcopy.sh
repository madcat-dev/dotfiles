#!/bin/sh

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

        $0 "${1}/${item}" "${2}/${item}" $3
    done
else
    if [ -e "${2}" ]; then
        md5src=( $(md5sum ${1}) )
        md5dst=( $(md5sum ${2}) )

        if [ "$md5src[1]" = "$md5dst[1]" ]; then
            echo -e " -  path ${2} not modified"
        else
            echo -e "\033[33m -  path ${2} was modified\033[0m"

            if [[ ! $3 = "simular" ]]; then
                cp -xarf "${1}" "${2}" && echo -e "[*]\t ${2} is copied"
            fi
        fi
    else
        echo -e "\033[32m -  copy: ${1} to ${2}\033[0m"

        if [[ ! $3 = "simular" ]]; then
            mkdir -p "$(dirname ${2})" > /dev/null 2>&1
            cp -xarf "${1}" "${2}" && echo -e "[+]\t ${2} is copied"
        fi
    fi
fi
