#!/bin/bash
# repository github
function create() {
  local_path=`pwd`
  cd
  val=$(python create.py $1)
  cd $local_path
  mkdir $1 && cd $1
  echo "# $1" >> README.md
  git init
  git add README.md
  git commit -m "initial commit"
  git remote add origin $val
  git push -u origin master
  echo "\n$1 successfully created"
  #open folder in VScode editor
  code $1
}