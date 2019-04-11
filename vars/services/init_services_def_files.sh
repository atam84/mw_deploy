#!/usr/bin/env bash

__FILES=$(ls | grep yml)

for __FILE in ${__FILES}; do
	__BASE_NAME=$(echo ${__FILE} | sed -e 's/\.yml$//g')
        sed -e "s/__SERVICE_NAME__/"${__BASE_NAME}"/g" __template_def_services__ > ${__FILE}
        echo service name ${__BASE_NAME}
done


