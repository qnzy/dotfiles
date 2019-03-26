" use :echo $MYVIMRC to show location

set nocompatible


" force python 3
if has('python3')
endif

filetype off
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'jpalardy/vim-slime'
"Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'kovisoft/paredit'
call plug#end()
filetype on

syntax enable " enable syntax highlighting
set hidden " allow hidden unsaved buffers
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set shiftwidth=4 " indentation
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete
set showmatch " highlight matching [{()}]
set tags=./tags,tags;
set ignorecase
set smartcase
set autoindent
set laststatus=2
set hlsearch " highlight matches
set incsearch " incremental search
filetype plugin indent on " enable filetype based settings
set backspace=2 " make backspace work
set ruler " show cursor position
noremap <silent> j gj" move in wrapped lines
noremap <silent> k gk" move in wrapped lines
set nobackup " no backup file
set noswapfile " no swap file
set go=m " guioptions (m: menu, T: toolbar, r: scrollbar right)

if has("gui_running")
    set lines=40 columns=110 " gvim size
endif

"  ctrl-p config (use .ignore file to filter rg)
let g:ctrlp_working_path_mode = 'a'
if executable('rg')
    let g:ctrlp_user_command = 'rg %s  --files --color=never'
    let g:ctrlp_use_caching = 0
endif

" vim-slime config
let g:slime_python_ipython=1
if has("win32")
    let g:slime_target="conemu"
    let g:slime_default_config = {"HWND":0}
else
    let g:slime_target="tmux"
    let g:slime_default_config = {"socket_name":"default","target_pane":"1"}
endif

" Syntastic settings
"let g:syntastic_check_on_open =1
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_c_compiler = 'clang'
"let g:syntastic_c_compiler_options='--analyze'
"let g:syntastic_c_checkers=['gcc','cppcheck','splint']
"let g:syntastic_cpp_checkers=['gcc','cppcheck']
"let g:syntastic_python_checkers=['pylint','pyflakes']
"let g:syntastic_vhdl_checkers=['ghdl']
"let g:syntastic_html_checkers=['tidy']
"let g:syntastic_tex_checkers=['chktex']
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_enable_signs = 1

" colorscheme
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme desert " default vim colorscheme
endif

autocmd BufNewFile,BufRead *.sld set filetype=scheme
autocmd FIleType * unlet! b:browsefilter

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

nnoremap <F10> :!./go.sh<CR>
 
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>

autocmd FileType vhdl inoremap <buffer>.. <space>=> 
autocmd FileType vhdl inoremap <buffer>,, <space><= 
autocmd FileType vhdl inoremap <buffer>--- ----------------------------------------------------------------

