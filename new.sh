#! /bin/bash
if [[ $1 != "" ]]; then
  if [ "$2" = "main" -o "$2" = "" ]; then
    echo "new mod and commit $1 on branch main"
    git co main > /dev/null 2>&1
    echo "$1" >> main
    
  else
    echo "new mod and commit $1 on branch $2"
    git co $2 > /dev/null 2>&1
    echo "$1" >> fct
  fi
  git add .
  git commit -a -m "$1"
else
  echo "No arg !"
fi 
