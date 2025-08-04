# K's Arch Linux Dotfiles (And Guides)
If you're here for the Wiki, see https://github.com/katzerax/.dotfiles/wiki.

This repository contains my Arch specific dotfiles, some of which I use on other distros too. I use it with Stow, a GNU symlink farm tool. 
Essentially, I keep a .dotfiles directory in my home folder, run `stow .` within that .dotfiles/ directory, and it creates symlinks to those files inside of the upper home folder.

The main reason to use something like this is for versioning, I can keep a commit history of my config files, and also I can easily synchronize those files across devices.
This also allows me to show other people my particular config files by linking them to this GitHub repository.

## Setting up this repo
***In your home directory;***

Clone the repository:
```
git clone https://github.com/katzerax/.dotfiles.git
```
CD into the folder:
```
cd .dotfiles/
```
Stow the files (generate symlinks, --adopt means merge existing files with them)
```
stow . --adopt
```
Reset the now merged files to the previous git cloned file (overwriting previous existing config with the one from this repo).
```
git reset --hard
```

If you're here for the fixes, see the Wiki
