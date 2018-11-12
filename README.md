# Dotfiles

These are my shell configuration dotfiles. The primary goal is to increase CLI productivity on macOS though many scripts run just fine on any POSIX implementation. It was originally derived from Matthew McCullough, but has been since been heavily modified and adapted to my needs.

_Changes:_

- Mostly for speed and simplicity, like:
  - Removing oh-my-zsh
  - Removing a bunch of Ruby, Gradle and Java cruft as I don't use them
- Addition of nested tmux support, because why would you be happy with only one level?
- Use the excellent [powerline-go](https://github.com/justjanne/powerline-go) as prompt
- Add (somewhat) carefully crafted zsh options to make it behave like I need it to, with good speed

## Focus

The focus is on zsh support, but there are plenty of cross-platform scripts in here. There are a few bash-specific ones.

## Inspirations

The contents of this repo have been partly invented from scratch, partly inspired by open source projects, and partly refactored from snippets from colleagues and friends. Many are attributed.

## Acquiring This Repo

This project contains submodules. It is suggested that you clone this into your home directory.

    cd ~
    git clone --recurse-submodules https://github.com/eripa/dotfiles

## Setup

There is a set up script that establishes the symlinks in your home directory. Run this once.

* For zsh
        `_setupdotfiles.zsh`
* For Bash (needs some fixes)
        `_setupdotfiles.bsh`

## Contributions
Contributions are always welcome in the form of pull requests with explanatory comments.

## Loathing, Mehs and Praise

1. Loathing should be directed into pull requests that make it better.
2. Bugs with the setup should be put as GitHub issues.
3. Mehs should be directed to /dev/null
4. Praise should be directed to [@matthewmccull](http://twitter.com/matthewmccull) on Twitter
5. If you happend to like my changes, praise might also be directed to [@ericripa](http://twitter.com/ericripa) on Twitter
