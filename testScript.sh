#!bin/bash

changedFiles=$(git diff --name-only HEAD^)

if [[ $changedFiles == *"workflow"* ]]; then
    echo "The variable \$changedFiles contains \"workflow\"."
else
    echo "The variable \$changedFiles does not contain \"workflow\"."
fi