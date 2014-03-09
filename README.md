Dan's Vim Configuration
=======================

I'm running [MacVim Snapshot 67](http://code.google.com/p/macvim/) on Mac OS X 10.9.

This repo exists for two reasons.

1. It's a backup for when I inevitably screw something up.
2. It might help vim enthusiasts of beginners figure out what works for them. I recommend taking a look through the .vimrc file and seeing if some of the options appeal to you. They've generally been cherrypicked from all over the web. 

Read the documentation below before trying out any of my files on your own install.

Try it out
----------
If you want to try out my vim configuration, you can. Here's my recommended method of how:

1. __Backup your current configuration!* On a *nix system, that might look like:__
   
        cd ~
        mkdir vim-backup
        mv .vimrc vim-backup
        mv .gvimrc vim-backup
        mv .vim vim-backup
 _*Seriously! Don't forget to backup your current setup!_

2. __Clone this repository and move the files into place.__ 

        cd ~
        git clone git://github.com/daturkel/vim-config.git
        cd vim-config
        mv .vim ..
        mv .vimrc ..
        mv .gvimrc ..

3. __That should be it! Reopen vim and it should all be working.__  
4. __How do I uninstall it?__  
 It's easy to uninstall too:

        cd ~
        rm -rf .vim
        rm .vimrc
        rm .gvimrc
        mv vim-backup/.vimrc ..
        mv vim-backup/.gvimrc ..
        mv vim-backup/.vim ..
And you're done!

Files
-----
- **.vimrc:** this is vim's runtime configuration file and contains the settings that make my vim special; this is commented to help you understand what lines are doing
- **.gvimrc:** these are just a few settings that pertain particularly to vim running in a graphic user interface (aka gvim); this too has comments to help explain it  

Functions
---------
- **WC:** running `:WC` gives you a wordcount in your statusbar
- **CB:** running `:CB` for "Center Buffer" creates two vertical splits, one to the right and one to the left of your current buffer, and then sets all three equal in width—this is nice in fullscreen in MacVim
- **Markdown Preview:** Press `,`+`p` in a markdown document to open it in Marked.app

Directories
-----------
The following are directories inside the `.vim` directory:

- **after:** I have a file in here which stops Vim from spellchecking my Startify screen.
- **bundle:** Vundle uses this to store my plugins
- **colors:** contains the [wombat](http://dengmao.wordpress.com/2007/01/22/vim-color-scheme-wombat/) colorscheme which I use
- **spell:** this contains the words added to vim's built in dictionary—I recently reset it so right now it hardly contains anything

Plugins Installed
-----------------
- **[HTML5:](https://github.com/othree/html5.vim)** support for html5 tags in syntax highlighting
- **[SuperTab:](http://www.vim.org/scripts/script.php?script_id=1643)** insert-mode tab-key autocompletion
- **[Vim-Airline:](https://github.com/bling/vim-airline)** a light-weight statusline replacement
- **[vim-endwise:](https://github.com/tpope/vim-endwise)** autoinsert "end" for Ruby
- **[Vim-Latex:](http://vim-latex.sourceforge.net/)** tools for LaTeX editing in vim
- **[vim-markdown:](https://github.com/tpope/vim-markdown)** adds markdown syntax detection for vim
- **[vim-startify:](https://github.com/mhinz/vim-startify)** gives me a nice startup page for vim
- **[Vundle:](https://github.com/gmarik/vundle)** lets me easily manage my plugins and also automatically update them using Git :)
