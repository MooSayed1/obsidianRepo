#!/bin/bash
i=0
function check_folder() {
  if [[ -d "$1" ]]; then
    for item in "$1"/*; do
      check_folder "$item"
    done
  elif [[ -f "$1" ]]; then
    if [[ "$1" == *.pdf ]]; then
      cp "$1" "/home/mohamed/Desktop/PdfsLinux/"
      let i=i+1
      echo "$i -Coped Successfully"
    fi
  fi
}

check_folder "$1"
# This Code Take any path and collect all of pdfs in this path 
# however This dirctory or file or any thig and copy all of 
# pdfs and put in one floder 
# you can edit this script To Your own needs  
