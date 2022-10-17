#!/bin/zsh

# Installation. 
# DO NOT COPY THIS PART IF MANUALLY INSTALLING IN YOUR SHELL PROFILE FILE.

# Retrieve current file name
ME=$(basename "$0")


if !  grep -q "$ME" "$PWD/.zprofile"; then  
# Add current file to the ones sourced by .zprofile
printf "\nsource ~/$ME" >> $PWD/.zprofile && echo
fi

### End of Installation ###


### The actual Commands ###
### Copy ONLY the commands below to your BASH profile file ###

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

# Launch VSCode and dev server

alias codenrun="code . && npm run dev"

# Create React File

function touchreact()
{
	touch $1 && echo "import React from 'react'" >> $1
}
