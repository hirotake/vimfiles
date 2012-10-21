# Tasks for setting up cross-platform Vim environment
require "fileutils"

task :init do
  if RUBY_PLATFORM =~ /mswin32|cygwin|mingw|bccwin/
    Dir.chdir(File.join(ENV["HOME"], "vimfiles"))
    `git submodule init`
    `git submodule update`
    Dir.chdir(ENV["HOME"])
    FileUtils.cp("vimfiles/vimrc", "_vimrc")
    FileUtils.cp("gvimfiles/gvimrc", "_gvimrc")
  else
    Dir.chdir(File.join(ENV["HOME"], "vimfiles"))
    `git submodule init`
    `git submodule update`
    Dir.chdir(ENV["HOME"])
    `ln -s vimfiles .vim`
    `ln -s vimfiles/vimrc .vimrc`
    `ln -s vimfiles/gvimrc .gvimrc`
  end
end

# vim: ft=ruby ts=2 sw=2 sts=2 expandtab
