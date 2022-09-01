#!/bin/zsh

# File navigation

# Mkdir + CD first argument

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

