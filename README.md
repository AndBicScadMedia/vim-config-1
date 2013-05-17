Dan's Vim Configuration
=======================

I'm running [MacVim Snapshot 66](http://code.google.com/p/macvim/) on Mac OS X 10.8.

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
 *Seriously! Don't forget to backup your current setup!
2. __Clone this repository and move the files into place.__ 

        cd ~
        git clone git://github.com/daturkel/Vim-Config.git
        cd Vim-Config
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

Directories
-----------
The following are directories inside the `.vim` directory:

- **autoload:** Pathogen (see below) is placed in here so that it automatically adds bundles on startup
- **bundle:** Pathogen essentially tricks vim into thinking anything folder in this folder is actually `~/.vim/` so that you can just drag all of a plugin's files a folder here or delete the whole plugin at once.
- **colors:** color-schemes, some of which I installed, others came with MacVim.
- **spell:** not really sure, just some stuff that seems to help spellcheck work

Plugins Installed
-----------------
- **[ctrlp:](http://kien.github.com/ctrlp.vim/)** easy full-path fuzzy file finder
- **[Pathogen:](http://www.vim.org/scripts/script.php?script_id=2332)** manage vim plugins easily
- **[SuperTab:](http://www.vim.org/scripts/script.php?script_id=1643)** insert-mode tab-key autocompletion
- **[Vim-Latex:](http://vim-latex.sourceforge.net/)** tools for LaTeX editing in vim
- **[vim-markdown:](https://github.com/tpope/vim-markdown)** adds markdown syntax detection for vim
- **[vim-startify:](https://github.com/mhinz/vim-startify)** gives me a nice startup page for vim
- **[xmledit:](https://github.com/sukima/xmledit/)** does tag autocompletion for xml and html


