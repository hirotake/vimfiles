# Tasks for setting up cross-platform Vim environment
require "fileutils"

def windows?
  RUBY_PLATFORM =~ /mswin32|cygwin|mingw|bccwin/
end

task :default => :help

task :help do
end

task :init do
  if windows?
    # TODO: THIS DOESN'T WORK.
    #Dir.chdir(File.join(ENV["HOME"], "vimfiles"))
    #`git submodule init`
    #`git submodule update`
    # TODO: LOOKS LIKE mklink REQURIES SOME PRIVILEGE.
    #Dir.chdir(ENV["HOME"])
    #`mklink _vimrc vimfiles\\vimrc`
    #`mklink _gvimrc vimfiles\\gvimrc`
    
    # WORKAROUND
    Dir.chdir(ENV["HOME"])
    FileUtils.cp("vimfiles/vimrc", "_vimrc")
    FileUtils.cp("vimfiles/gvimrc", "_gvimrc")
    puts <<EOS
Run following commands:
cd vimfiles
git submodule init
git submodule update
vim -c NeoBundleInstall -c quit
EOS
  else
    Dir.chdir(File.join(ENV["HOME"], "vimfiles"))
    `git submodule init`
    `git submodule update`
    Dir.chdir(ENV["HOME"])
    `ln -sf vimfiles .vim`
    `ln -sf vimfiles/vimrc .vimrc`
    `ln -sf vimfiles/gvimrc .gvimrc`
    `vim -c NeoBundleInstall -c quit`
  end
end

task :clean do
  if windows?
    Dir.chdir(ENV["HOME"])
    `del _vimrc _gvimrc`
  else
    Dir.chdir(ENV["HOME"])
    `rm -fr .vimrc .gvimrc .vim`
  end
end

task :clean_all => [:clean] do
  if windows?
    Dir.chdir(ENV["HOME"])
    `del /s /q vimfiles`
  else
    Dir.chdir(ENV["HOME"])
    `rm -fr vimfiles`
  end
end


# vim: ft=ruby ts=2 sw=2 sts=2 expandtab
