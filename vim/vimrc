" automatically reload vimrc when it's saved
"au BufWritePost .vimrc so ~/.vimrc

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'christoomey/vim-tmux-navigator'
Bundle 'jpalardy/vim-slime'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kovisoft/paredit'
Bundle 'michaeljsmith/vim-indent-object'

filetype on

let mapleader="," " leader is comma
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
" set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set colorcolumn=80 " highlight colum 80
set tags=./tags,tags;
set ignorecase
set smartcase
set autoindent
"set smartindent
set cindent

"chicken scheme
let g:is_chicken=1

"vim-slime config
let g:slime_target="tmux"
let g:slime_python_ipython=1

" CtrlP settings
let g:ctrlp_max_files=0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
autocmd CompleteDone * pclose

" Syntastic settings
let g:syntastic_check_on_open =1
let g:syntastic_aggregate_errors = 1
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options='--analyze'
let g:syntastic_c_checkers=['gcc','cppcheck','splint']
let g:syntastic_cpp_checkers=['gcc','cppcheck']
let g:syntastic_python_checkers=['pylint','pyflakes']
let g:syntastic_vhdl_checkers=['ghdl']
let g:syntastic_html_checkers=['tidy']
let g:syntastic_tex_checkers=['chktex']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs = 0

" snipMate settings
let g:snippets_dir='~/.vim/snippets/'

" move vertically by visual line
nnoremap j gj
noremap k gk

" quick escape
inoremap jk <esc>

" replace word under cursor
:nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" remove search highlighting
nnoremap <leader><space> :nohlsearch<CR>
set hlsearch " highlight matches
set incsearch " incremental search

" toggle NerdTree
nnoremap <leader>e :NERDTreeToggle<CR>

" toggle quickfix
nnoremap <leader>q :cw<CR>

" save, make, quickfix
nnoremap <leader>m :w\|silent make\|redraw!\|cw<CR>

" switch buffer (use tab expand)
nnoremap <leader>, :buf 

" Ag
nnoremap <leader>a :Ag 

" better indent
vnoremap < <gv 
vnoremap > >gv

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" set list listchars=tab:\ \ ,trail:·
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" colorscheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
"colorscheme solarized
" color solarized
" highlight Pmenu guibg=brown gui=bold
" hi Pmenu guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
" hi PmenuSbar guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
" hi PmenuThumb guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE
" highlight Pmenu ctermbg=13 guibg=DarkBlue
" highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=LightBlue
" highlight PmenuSbar ctermbg=7 guibg=DarkGray
" highlight PmenuThumb guibg=Black

" Tagbar
nmap <F8> : TagbarToggle<CR>
let g:tagbar_type_vhdl = {
    \ 'ctagstype': 'vhdl',
    \ 'kinds' : [
        \'d:prototypes',
        \'b:package bodies',
        \'e:entities',
        \'a:architectures',
        \'t:types',
        \'p:processes',
        \'f:functions',
        \'r:procedures',
        \'c:constants',
        \'T:subtypes',
        \'r:records',
        \'C:components',
        \'P:packages',
        \'l:locals',
        \'s:signals'
    \]
\}

