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
    `ln -sf vimfiles .vim`
    `ln -sf vimfiles/vimrc .vimrc`
    `ln -sf vimfiles/gvimrc .gvimrc`
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
