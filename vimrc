" VIM Settings
" Chaitanya Datye 2017

" ==================== PATHOGEN =======================================
" Plugin Manager - Pathogen
" Plugins in .vim/bundle

execute pathogen#infect()
call pathogen#helptags()

" ==================== VIM BASICS =====================================

syntax enable                               " colors in syntax
filetype indent on                          " indentation in syntax
set encoding=utf-8                          " symbols
set number                                  " line numbers
set showcmd                                 " show command in bottom bar
set showmatch                               " highlight matching braces
"set mouse=a                                " sets use of mouse pointer
set pastetoggle=<F10>                       " paste copied content as is
set nowrap                                  " don't wrap lines
set wildmenu                                " visual autocomplete for cmd menu
set wildignore=*.o,*~,*.pyc,*.swp,*.class   " ignore compiled/useless files
set nocompatible                            " use all enhancements of vim
set tabstop=4                               " number of spaces per tab
set shiftwidth=4                            " set indent to 4 spaces
set softtabstop=4
set expandtab                               " expands tabs to spaces
"Makes delete key on mac keyboard erase previous character
set backspace=indent,eol,start
set colorcolumn=80                          " show line marking at col 80

"Highlight extra white space"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ==================== SEARCH  ========================================

set hlsearch                                " highlight matches
set incsearch                               " search incremental as you type
let mapleader=','                           " reassign map leader to comma
nnoremap <Leader><space> :nohlsearch<CR>
set ignorecase                              " ignore case while search

" Smart case searching is enabled when you search and then type '\s'. If you
" type '\s' again, it will disable smart case searching and searching will go
" back to ignorecase.
map \s :set smartcase!<CR>:set smartcase?<CR>

" ==================== SOLARIZED  =====================================

let python_highlight_all = 1
" This is used for solarized
set background=dark
" set t_Co=256
" let g:solarized_termcolors= 256
colorscheme solarized
let g:solarized_termtrans = 16
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"

" ==================== SYNTASTIC ======================================

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" ==================== COLORSCHEME ====================================

" colorscheme Tomorrow-Night
" set background=dark
" colorscheme gruvbox 
" let g:gruvbox_contrast_dark='hard'

" ==================== INDENT GUIDES ==================================

filetype plugin indent on
" If indentation is using tabs
set list
set listchars=tab:\|\ 
" If indentation is using spaces - IndentLines works best. Customization --
"let g:indentLine_color_term = 239
"let g:indentLine_char = '|'

" ==================== FOLDING ========================================

"set foldenable                              " enable folding
"set foldlevelstart=10                       " open most folds by default
"nnoremap <space> za
"set foldmethod=indent                       " fold based on indent level

" ==================== PLUGINS ========================================

" FZF

set rtp+=~/.fzf

" Powerline

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Airline Config

set laststatus=2
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline#extensions#tagbar#enabled = 0
"let g:airline#extensions#tabline#enabled = 1

" NerdTree

map <C-n> :NERDTreeToggle<CR>

" CtrlP

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <leader>. :CtrlPTag<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" TagBar
map <C-b> :TagbarToggle<CR>

" NERDCommenter
" let g:NERDSpaceDelims = 1                    " add space after comment delim
" let g:NERDCompactSexyComs = 1                " comments sexily!
" let g:NERDDefaultAlign = 'left'              " align line-wise comment delim to left
" let g:NERDCommentEmptyLines = 1              " useful when commenting region
" let g:NERDTrimTrailingWhitespace = 1         " trims ws when uncommenting

" Vim-Go
" let g:go_disable_autoinstall = 0
" let g:go_highlight_functions = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_format_strings = 1

" Cscope
if has('cscope')
   set cscopetag cscopeverbose

"   if has('quickfix')
"      set cscopequickfix=s-,c-,d-,i-,t-,e-
"   endif

   cnoreabbrev csa cs add
   cnoreabbrev csf cs find
   cnoreabbrev csk cs kill
   cnoreabbrev csr cs reset
   cnoreabbrev css cs show
   cnoreabbrev csh cs help

   command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

" Cscope mappings
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
