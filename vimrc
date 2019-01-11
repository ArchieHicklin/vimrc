set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'reedes/vim-pencil'
Plugin 'junegunn/limelight.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Ron89/thesaurus_query.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
syntax on
filetype plugin indent on
set number


" Goyo set F5 to goyo
" nmap <F5> :Goyo<cr>
"
" " Pencil 
augroup pencil
   autocmd!
     autocmd FileType markdown,mkd call pencil#init() 
       autocmd FileType text         call pencil#init()
       augroup END
"
       let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
       let g:pencil#concealcursor = 'n'  " n=normal, v=visual, i=insert, c=command (def)
"
"       " Sets me up for writing with Markdown       
       autocmd Filetype markdown call SetUpMk()
       function SetUpMk()
             Goyo
             endfunction    


" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
"
" " Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
"
" Default: 0.5
let g:limelight_default_coefficient = 0.7
"
" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'
"
" Highlighting priority (default: 10)
"  Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
" " Ignore some folders and files for CtrlP indexing
 let g:ctrlp_custom_ignore = {
   \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
     \ 'file': '\.so$\|\.dat$|\.DS_Store$'
       \ }
