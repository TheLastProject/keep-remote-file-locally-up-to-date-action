#!/bin/sh -l

url="$1"
file_in_repo="$2"
git_name="$3"
git_email="$4"

mkdir -p "$(dirname "$file_in_repo")"
wget "$url" -O "$file_in_repo"

git config --global user.name "$git_name"
git config --global user.email "$git_email"
git config --global --add safe.directory /github/workspace

git add "$file_in_repo"
git commit -m "Update $(basename "$file_in_repo") from $url"
git push
