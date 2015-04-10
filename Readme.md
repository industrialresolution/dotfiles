# Dotfiles and osx-setup

This repository provides default configurations for The Industrial Resolution's dev team.

You should have [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) installed before setting up this project.

## Installation
1. Clone this repository to ~/.dotfiles
2. Run ```~/.dotfiles/bin/osx-setup``` to install dev tools. (See below)
3. Run ```rcup``` from your home directory to create links to .dotfiles configs.  See [rcm](https://github.com/thoughtbot/rcm) for more information.

## osx-setup
This script helps set up your dev tools. It should always be safe to re-run.

It switches the default shell to zsh and installs/updates the following:

1. homebrew
2. rcm
3. git-2.x
4. php-5.4 with xdebug
5. composer
6. nodejs
7. homebrew cask
8. vagrant
9. pgadmin3
