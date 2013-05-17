Dan's Vim Configuration
=======================

I'm running [MacVim Snapshot 64](http://code.google.com/p/macvim/) on Mac OS X 10.8.

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
- **[NERDTree:](http://www.vim.org/scripts/script.php?script_id=1658)** filetree browser
- **[Pathogen:](http://www.vim.org/scripts/script.php?script_id=2332)** manage vim plugins easily
- **[ShowMarks:](http://www.vim.org/scripts/script.php?script_id=152)** toggle column of mark locations and names
- **[Snipmate-Snippets:](https://github.com/honza/snipmate-snippets)** pre-written code snippets for tons of languages for use with Vim-Snipmate
- **[SuperTab:](http://www.vim.org/scripts/script.php?script_id=1643)** insert-mode tab-key autocompletion
- **[tlib:](https://github.com/tomtom/tlib_vim)** a dependency for vim-snipmate; its ability to create a filterable list of selections is used
- **[Vim-Addon-MW-Utils:](https://github.com/MarcWeber/vim-addon-mw-utils)** a dependency of Vim-Snipmate for "caching parched .snippets files" according to the Vim-Snipmate documentation
- **[Vim-Latex:](http://vim-latex.sourceforge.net/)** tools for LaTeX editing in vim
- **[Vim-Snipmate:](https://github.com/garbas/vim-snipmate/)** a fork of the original [Snipmate](https://github.com/msanders/snipmate.vim) but unlike the original, it is in active development; it allows for easy code snippets
- **[VimOutLiner:](http://www.vim.org/scripts/script.php?script_id=3515)** outlines and to-do lists

More info to come.
