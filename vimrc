" https://github.com/Shougo/neobundle.vim
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/vimfiles/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/vimfiles/bundle/'))

" Let NeoBundle manage NeoBundle
"NeoBundle 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'Lokaltog/vim-easymotion'
"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
"NeoBundle 'rails.vim'
" Non github repos
"NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

set nocp nobackup noeb
set shortmess+=I
set expandtab
set ts=4
set sw=4
set autoindent
set ic
set nu
set clipboard=unnamed
set scrolloff=3
set printoptions=number:y,wrap:y
set laststatus=2

" Map
vmap / y/<C-R>"<CR>
map ,n :nohl<CR>
map ,u :set notextmode fenc=utf-8<CR>
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
"map <C-w> :tabclose<cr>
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>

" Custom Status Line
function! GetStatusEx()
 let str = ''
 let str = str . '[' . &fileformat . ']'
 if has('multi_byte') && &fileencoding != ''
 let str = str . '[' . &fileencoding . ']'
 endif
 return str
endfunction
set statusline=%<%f\ %m%r%h%w%{GetStatusEx()}\ \ \ ,%c%V%8P\ ascii:%b\ \ \ %{strftime(\"%Y/%m/%d\ -\ %H:%M\")}
function! VimCmdOutput(cmd)
  redir @*
  silent exec a:cmd
  return @*
endfunction

