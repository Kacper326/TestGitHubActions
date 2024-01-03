#!/usr/bin/env bash

# variable=".github/actions/*/action.yml"
# echo "$variable"
# echo "prettier-output=$(prettier --list-different --config .prettierrc.yml --ignore-path .prettierignore --no-error-on-unmatched-pattern "$variable")"
# echo "prettier-output=$(prettier --list-different --config .prettierrc.yml --ignore-path .prettierignore --no-error-on-unmatched-pattern .github/workflows/*.yml)"

# files=$(yq eval '.overrides[].files[]' .prettierrc.yml)
# # Store files in an array
# IFS=$'\n' read -r -a files_array <<< "$files"

# for file in "${files_array[@]}"; do
#   echo "$file"
# done

readarray files < <(yq '.overrides[].files[]' .prettierrc.yml) 
if [ "${#files[@]}" -gt 0 ]; then
    zmienna+="${files[@]}"
    # echo "prettier-output=$(prettier --list-different --config .prettierrc.yml --ignore-path .prettierignore --no-error-on-unmatched-pattern "$variable")"
fi
echo "${zmienna}"