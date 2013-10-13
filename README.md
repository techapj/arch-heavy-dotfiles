devlin zed's dotfiles
=====================

This is my dotfiles repository that lets me quickly bootstrap a new Arch Linux
system.  It's expansive and essentially its own Linux distribution, so you're
probably only looking for configuration for a program or two.

![screenshot](https://raw.github.com/devlinzed/dotfiles/master/screenshot.png)

install
=======

Before installing, you should install the relevant packages with `pacman`,
`gem` and `npm`.  A list of packages and their purpose is below.

### official repos

    pacman -S awesome beets ctags git keychain lua luajit luakit mpc mpd mpv
              mutt msmtp nodejs notmuch packer pass ruby rxvt-unicode slock
              sxiv xautolock zsh

### aur

    packer -S dmenu-xft-fuzzy fontconfig-infinality isync

### ruby gems

    gem install gem-ctags bundler gem-browse mail redcarpet rubocop

### npm packages

    npm install -g coffee coffelint jshint

### bootstrapping

Afterward, check out the repository and run the installation script:

    git clone https://github.com/devlinzed/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install

The script is idempotent and you can run it again to update symbolic links and
vim plugins. 

Afterward, it's recommended that you `git grep` for the following values and
replace them as necessary:

* `.dotfiles`
* `/home/devlin`
* `devlin`

### compiling vim

vim should be compiled with:

    ./configure --enable-gui=no --enable-luainterp --enable-pythoninterp\
                --enable-rubyinterp --prefix=/usr/local --with-features=huge\
                --with-luajit --with-x

what i use
==========

The focal bits are the following.  This repository mainly consists of
configuration and scripts for these programs.

* **email**: [mutt](http://mutt.org/)
* **image viewer**: [sxiv](https://bbs.archlinux.org/viewtopic.php?id=112643)
* **music player**: [mpd](http://mpd.wikia.com/wiki/Music_Player_Daemon_Wiki) and [mpc](http://mpd.wikia.com/wiki/Client:Mpc)
* **shell**: [zsh](http://zsh.org/)
* **terminal emulator**: [rxvt-unicode](https://en.wikipedia.org/wiki/Rxvt)
* **text editor**: [vim](http://vim.org)
* **version control**: [git](http://git-scm.org)
* **video player**: [mpv](http://mpv.io/index.html)
* **web browser**: [luakit](http://luakit.org)
* **window manager**: [awesome](http://awesome.naquadah.org/)

Some programs or scripts rely on secondary programs.  To properly use
everything in this repository, you'll need to install these as well.

* [beets](http://beets.radbox.org) for managing the music library
* [dmenu](http://tools.suckless.org/dmenu/) for menus, duh
* [exuberant ctags](http://ctags.sourceforge.net/) for indexing code
* [infinality](http://infinality.net) for configuring font display
* [isync](http://isync.sourceforge.net/) for syncing email
* [keychain](http://www.funtoo.org/wiki/Keychain) for managing agents & passwords
* [msmpt](http://msmtp.sourceforge.net) for sending email
* [node](http://nodejs.org) because people keep writing crap in it
* [notmuch](http://notmuchmail.org/) for indexing and searching email
* [packer](https://aur.archlinux.org/packages/packer/) for accessing the AUR
* [pass](http://zx2c4.com/projects/password-store/) for managing passwords
* [xautolock](http://freecode.com/projects/xautolock) and
  [slock](http://tools.suckless.org/slock) to lock the screen

folder structure
================

- `**/*.zsh`: automatically loaded by zsh (this will probably be moved)
- `**/completion.zsh`: automatically loaded, but after everything else
- `bin/`: added to your `$PATH` and accessible everywhere
- `functions/*`: lazy loaded as zsh functions and accessible everywhere
- `symlinks.yml`: list of files linked into your `$HOME`

license
-------

Where applicable, everything in this repository is released into the public
domain.  See `UNLICENSE.md`.
