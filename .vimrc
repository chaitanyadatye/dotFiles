execute pathogen#infect()
syntax enable 
filetype indent on
set number
set showcmd
set showmatch
"set mouse=a
set pastetoggle=<F10>
set showcmd
set hlsearch
set incsearch
let mapleader=','
nnoremap <Leader><space> :nohlsearch<CR>
set ignorecase
set nowrap
set wildmenu
set wildignore=*.o,*~,*.pyc,*.swp,*.class
"set completeopt-=preview
set nocompatible
"This is used for solarized
"set background=dark
"let g:solarized_termcolors= 256
"let g:solarized_termtrans = 16
"let g:solarized_bold = 1
"let g:solarized_underline = 1 
"let g:solarized_italic = 1
"let g:solarized_contrast = high
"let g:solarized_visibility= high
"colorscheme solarized

"This is for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"This is for indentation guides
colorscheme default
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=black ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=darkgrey
:set list 
:set listchars=tab:\|\ 
filetype plugin indent on
let g:indent_guides_guide_size = 1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"Makes delete key on mac keyboard erase previous character
set backspace=indent,eol,start
