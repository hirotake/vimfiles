# Setting Up Multi-Machine/Cross-Platform VIM Environment With Github and neobundle

## How To Set Up

### Linux (With Rake)

<pre><code>
cd
git clone https://github.com/hirotake/vimfiles.git
rake -f vimfiles/Rakefile init
</code></pre>

### If you don't have Ruby and Rake installed
Instead of using rake command, you just need to create symbolic links as .vim, .vimrc, and .gvimrc against vimfiles, vimfiles/vimrc, and vimfiles/gvimrc, respectively.

<pre><code>
cd
git clone https://github.com/hirotake/vimfiles.git
cd vimfiles
git submodule init
git submodule update
cd
ln -sf vimfiles .vim
ln -sf vimfiles/vimrc .vimrc
ln -sf vimfiles/gvimrc .gvimrc
vim -c NeoBundleInstall
</code></pre>

## References

### In English

- [Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

