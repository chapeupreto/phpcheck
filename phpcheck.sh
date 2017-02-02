#!/usr/bin/env bash

which php &> /dev/null
if [[ $? -ne 0 ]]; then
	echo -e "\nSorry! You need to have PHP installed in order for this to work.\n\n"
	exit 1;
fi

arg="${1:-.}"

if [[ -f "${arg}" ]]; then
	php -l "${arg}"
fi

if [[ -d "${arg}" ]]; then
	UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
	find "${arg}" -name '*.php' -exec php -l \{\} > /dev/null 2> /tmp/"${UUID}" \;

	if [[ -s /tmp/"${UUID}" ]]; then
		cat /tmp/"${UUID}" && rm /tmp/"${UUID}" && exit 1;
	fi
fi
