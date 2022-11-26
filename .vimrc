set number
set relativenumber
set numberwidth=1
syntax enable
set showcmd
set wildmenu
set mouse=a
set clipboard=unnamed
set ruler
set sw=2
set encoding=utf-8
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')

" Theme
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'jacoborus/tender.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'itchyny/lightline.vim'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme tender

let mapleader=","

let g:lightline = { 'colorscheme': 'solarized' }

let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:webdevicons_enable_nerdtree=1
let g:webdevicons_conceal_nerdtree_brackets=1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

nmap <Leader>f <Plug>(easymotion-s2)
nmap <Leader>tg :NERDTreeFind<CR>
nmap <Leader>tl :NERDTree<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
