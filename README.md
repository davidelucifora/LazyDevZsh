# LazyDevZsh
A few simple zsh aliases to make a dev's workflow faster.

## Description
LazyDevZsh si for devs who hate repeating themselves when using the terminal.
Ever found yourself repeating your commands over and over again when creating a project or using Git? Well here's your solution.

## Installation 

### If you are running zsh on a newer Macbook: 

Simply copy lazy_dev_zsh.sh to your home directory in terminal and run 

```console zsh lazy_dev_zsh.sh```.
This should add the aliases and functions in the file to your .zprofile.

**Warning**
:warning: This tool was developed for Macbooks using ZSH and it will edit the .zprofile file in your home directory. If you use a different shell like BASH, KSH etc. Follow this steps instead.

#### If you are using BASH, KSH, or other shells:

You can still add these aliases and functions to your local environment. 

1. Head to the `lazy_dev_zsh.sh` file in this repo and copy the contents of the actual commands and *NOT* the installation script
2. Paste the commands at the end of your `~/.bashrc` file.
3. Enjoy.

## Usage

This adds new commands to your terminal to speed up your developer work flow.

#### Mkcdir

`mkcdir folder_name` this creates a folder (mkdir) and cds into it).

#### Git Aliases

1. `ginit` is the same as `git init .`
2. `gadd` is the same as `git add .`
3. `gipom` is the same as `git push origin main`

4. `lazygit 'MESSAGE'` runs the following:
```git add . 
git commit . -m MESSAGE 
git push origin master```

#### Vite workflow

Run `spin-vite-app YOUR_APP_NAME` and the script will run the following: 
```
npm create vite@latest "YOUR_APP_NAME"
cd YOUR_APP_NAME
npm install
code .
npm run dev
```
