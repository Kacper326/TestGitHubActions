#!/usr/bin/env bash

readarray files < <(yq '.overrides[].files[]' .prettierrc.yml) 
if [ "${#files[@]}" -gt 0 ]; then
    zmienna+="$(prettier --list-different --config .prettierrc.yml --ignore-path .prettierignore --no-error-on-unmatched-pattern ${files[@]})"
fi
echo "${zmienna}"