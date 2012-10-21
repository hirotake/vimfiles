# Tasks for setting up cross-platform Vim environment
require "fileutils"

task :init do
  if RUBY_PLATFORM =~ /mswin32|cygwin|mingw|bccwin/
    Dir.chdir(File.join(ENV["HOME"], "vimfiles"))
    `git submodule update`
    Dir.chdir(ENV["HOME"])
    `ln -s vimfiles/vimrc _vimrc`
    `ln -s vimfiles/gvimrc _gvimrc`
  else
    Dir.chdir(File.join(ENV["HOME"], "vimfiles"))
    Dir.chdir(ENV["HOME"])
    `git submodule update`
    `ln -s vimfiles .vim`
    `ln -s vimfiles/vimrc .vimrc`
    `ln -s vimfiles/gvimrc .gvimrc`
  end
end

# vim: ft=ruby ts=2 sw=2 sts=2 expandtab
