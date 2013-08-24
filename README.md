devlin zed's dotfiles
=====================

This is my dotfiles repo that lets me quickly bootstrap a new Arch Linux
system.  It's for me and you'll probably hate it.

![screenshot](https://bitbucket.org/devlinzed/dotfiles/raw/tip/screenshot.png)

install
=======

Before installing, you should install the relevant packages with `pacman`.  A
list of packages and their purpose is below.

    pacman -S awesome ctags epdfview git keychain lua luajit luakit mpd mpv\
              mutt ncmpcpp notmuch packer pass python2 ruby rvxt-unicode slock\
              the_silver_searcher xautolock zsh

    packer -S fontconfig-infinality freetype2-infinality isync matcher msmpt\
              sxiv

Afterward, check out the repository:

    git clone https://github.com/devlinzed/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    ./bootstrap

This will:

1. create symbolic links;
2. install the required system-wide ruby gems;
4. install our beautiful fonts;
5. install vim plugins.

The bootstrap script is idempotent and you can run it again to update symbolic
links and vim plugins.  You may need to run it as root, if `gem` and `pip2`
require it (but make sure to properly set `HOME` and `DOTFILES` or it'll be
installed to the root directory.)

Afterward, it's recommended that you `ag` for the following values and
replace them as necessary:

* `.dotfiles`
* `/home/devlin`
* `devlin`

And properly configure Infinality:

    infctl setstyle linux

vim should be compiled with:

    ./configure --enable-gui=no\
                --enable-luainterp\
                --enable-pythoninterp\
                --enable-rubyinterp\
                --prefix=/usr/local\
                --with-features=huge\
                --with-luajit\
                --with-x

what i use
==========

This repository is expansive and essentially its own Linux distribution, so
you're probably only looking for configuration for a program or two.  The
focal bits are the following.

* **color scheme**: [base16](https://github.com/chriskempson/base16)
* **document viewer**: [epdfview](http://freecode.com/projects/epdfview)
* **email**: [mutt](http://mutt.org/)
* **font**: [dejavu sans](http://dejavu-fonts.org) & [cure](http://artwizaleczapka.sourceforge.net/)
* **image viewer**: [sxiv](https://github.com/muennich/sxiv)
* **music player**: [ncmpcpp](http://ncmpcpp.rybczak.net/)
* **operating system**: [arch linux](http://archlinux.org)
* **password manager**: [pass](http://zx2c4.com/projects/password-store/)
* **shell**: [zsh](http://zsh.org/)
* **terminal emulator**: [rxvt-unicode](https://en.wikipedia.org/wiki/Rxvt)
* **text editor**: [vim](http://vim.org)
* **version control**: [mercurial](http://mercurial.selenic.com)
* **video player**: [mpv](http://mpv.io/index.html)
* **web browser**: [luakit](http://luakit.org)
* **window manager**: [awesome](http://awesome.naquadah.org/)

Some programs or scripts rely on secondary programs.  To properly use
everything in this repository, you'll need to install these as well.

* [beets](http://beets.radbox.org) for managing my music library
* [dropbox](http://dropbox.com) for backing up my keyring
* [exuberant ctags](http://ctags.sourceforge.net/) for indexing my code
* [git](http://git-scm.org) for working on lousy projects
* [infinality](http://infinality.net) for beautifying fonts
* [isync](http://isync.sourceforge.net/) for receiving email
* [keychain](http://www.funtoo.org/wiki/Keychain) for managing your ssh and gpg
  agents & passwords
* [matcher](https://github.com/burke/matcher) for approximate string matching
* [mpd](http://mpd.wikia.com/wiki/Music_Player_Daemon_Wiki) for serving music
  to ncmpcpp
* [msmpt](http://msmtp.sourceforge.net) for sending email
* [notmuch](http://notmuchmail.org/) for indexing and searching email
* [packer](https://aur.archlinux.org/packages/packer/) for accessing the AUR
* [the silver searcher](https://github.com/ggreer/the_silver_searcher) for
  replacing grep
* [xautolock](http://freecode.com/projects/xautolock) and
  [slock](http://tools.suckless.org/slock) to lock the screen


folder structure
================

- `**/*.symlink`: linked into your `$HOME`
- `**/*.zsh`: automatically loaded by zsh
- `**/*completion.zsh`: loaded last
- `bin/*`: added to your `$PATH`
- `functions/*`: lazy loaded as zsh functions

license
-------

Where applicable, everything in this repository is released into the public
domain.  See `UNLICENSE.md`.
