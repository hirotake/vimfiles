# Setting Up Cross-Platform VIM Environment With Github and neobundle

## How To Set Up

### Linux

<pre><code>
cd
git clone https://github.com/hirotake/vimfiles.git
rake -f vimfiles init
vim
</code></pre>

Then,

<pre><code>
:NeoBundleInstall
</code></pre>

### If you don't have Ruby and Rake installed
Instead of using rake command, you just need to create symbolic links as .vim, .vimrc, and .gvimrc against vimfiles, vimfiles/vimrc, and vimfiles/gvimrc, respectively.

<pre><code>
cd
ln -s vimfiles .vim
ln -s vimfiles/vimrc .vimrc
ln -s vimfiles/gvimrc .gvimrc
</code></pre>

### Windows (When you have ln.exe)

<pre><code>
cd %HOME%
git clone https://github.com/hirotake/vimfiles.git
rake -f vimfiles init
</code></pre>

Then,

<pre><code>
:NeoBundleInstall
</code></pre>

In Windows, [ln.exe](http://schinagl.priv.at/nt/ln/ln.html) utility is requried to create symbolic links and the utility requires runtime DLLs in Microsoft Visual C++ 2005 SP1 Redistributable Package ([x86](http://www.microsoft.com/downloads/details.aspx?familyid=200B2FD9-AE1A-4A14-984D-389C36F85647&displaylang=en), [x86_64](http://www.microsoft.com/downloads/details.aspx?FamilyID=EB4EBE2D-33C0-4A47-9DD4-B9A6D7BD44DA&displaylang=en)].
Please be sure that the runtime and ln.exe is installed on your system and the executable is located under %PATH%.

Note that a driver software seems to be required to enable symobolic link functionality on Windows XP.
However, I will not show the instruction on how to enbale it here becuase I don't use Windows XP. 
Please refer to the [ln.exe](http://schinagl.priv.at/nt/ln/ln.html) site for details.



## References

### In English

- [Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

- [link Shell Extension (LSE)](http://schinagl.priv.at/nt/hardlinkshellext/hardlinkshellext.html)

- [ln.exe utility](http://schinagl.priv.at/nt/ln/ln.html)

### In Japanese

- [Windows XPの正体 強化されたコマンドライン・ツール（中編）](http://www.atmarkit.co.jp/fwin2k/xp_feature/013commandtool/commandtool3.html)

- [vim環境の再構築１(DropBoxでvim設定の共有)](http://nukino.github.com/blog/2011/12/24/test-post/)
