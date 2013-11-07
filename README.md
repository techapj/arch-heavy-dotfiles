devlin zed's dotfiles
=====================

This is my dotfiles repository that lets me quickly bootstrap a new Arch Linux
system.  It's expansive and essentially its own Linux distribution, so you're
probably only looking for configuration for a program or two.

![screenshot](https://raw.github.com/devlinzed/dotfiles/master/screenshot.png)

install
=======

Before installing, you should install the relevant packages with `pacman` and
`gem`.  A list of packages and their purpose is below.

    pacman -S awesome bitlbee ctags git keychain lua luajit luakit irssi      \
              mpc mpd mpv mutt msmtp notmuch packer pass ruby rxvt-unicode    \
              slock sxiv tmux vim xautolock zsh
    packer -S dmenu-xft-fuzzy isync-git irssi-libnotify-git
    gem install gem-ctags bundler

Afterward, check out the repository and run the installation script:

    git clone https://github.com/devlinzed/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install

When you're done, `git grep` for `devlin` and change it as necessary.  If you
installed to a different directory, look for `.dotfiles`, too.

The script is idempotent and you can run it again to update stuff.

what i use
==========

The focal bits are the following.  This repository mainly consists of
configuration and scripts for these programs.

* **chat**: [irssi](http://irssi.org) with [bitlbee](http://bitlbee.org)
* **email**: [mutt](http://mutt.org/)
* **image viewer**: [sxiv](https://bbs.archlinux.org/viewtopic.php?id=112643)
* **music player**: [mpd](http://mpd.wikia.com/wiki/Music_Player_Daemon_Wiki) and [mpc](http://mpd.wikia.com/wiki/Client:Mpc)
* **shell**: [zsh](http://zsh.org)
* **terminal emulator**: [rxvt-unicode](https://en.wikipedia.org/wiki/Rxvt)
* **terminal multiplexer**: [tmux](http://tmux.sourceforge.net/)
* **text editor**: [vim](http://vim.org)
* **version control**: [git](http://git-scm.org)
* **video player**: [mpv](http://mpv.io/index.html)
* **web browser**: [luakit](http://luakit.org)
* **window manager**: [awesome](http://awesome.naquadah.org/)

Some programs or scripts rely on secondary programs.  To properly use
everything in this repository, you'll need to install these as well.

* [dmenu](http://tools.suckless.org/dmenu/) for menus, duh
* [exuberant ctags](http://ctags.sourceforge.net/) for indexing code
* [isync](http://isync.sourceforge.net/) for syncing email
* [keychain](http://www.funtoo.org/wiki/Keychain) for managing agents & passwords
* [msmpt](http://msmtp.sourceforge.net) for sending email
* [notmuch](http://notmuchmail.org/) for indexing and searching email
* [pass](http://zx2c4.com/projects/password-store/) for managing passwords
* [xautolock](http://freecode.com/projects/xautolock) and
  [slock](http://tools.suckless.org/slock) to lock the screen

license
=======

Where applicable, everything in this repository is released into the public
domain.  See `UNLICENSE.md`.
