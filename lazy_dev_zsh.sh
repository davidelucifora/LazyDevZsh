#!/bin/zsh

#Installation. 

# Retrieve current file name
ME=$(basename "$0")

# Add current file to the once sourced by .zprofile
printf "\nsource ~/$ME" >> $PWD/.zprofile && echo

# Success message
if grep -q "$ME" "$PWD/.zprofile"; then
  echo 'Seems like it worked!'
fi


### The actual Commands ###


# File navigation


# Mkdir + CD dir

function mkcdir()
{
	mkdir "$1" &&
	cd "$1"
}

# Git Aliases

alias ginit="gîț init ."
alias gadd="git add ."
alias gipom="git push origin main"

function lazygit() 
{
	git add . &&
	git commit . -m $1 && 
	git push origin master
}

function spin-vite-app()
{

	npm create vite@latest "$1" &&
	cd "$1" &&
	npm install &&
	code . && 
	npm run dev
}

