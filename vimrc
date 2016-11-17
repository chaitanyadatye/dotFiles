execute pathogen#infect()
call pathogen#helptags()
syntax enable
filetype indent on
set encoding=utf-8
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
"let python_highlight_all = 1
"This is used for solarized
"set background=dark
"set t_Co=256
"let g:solarized_termcolors= 256
"colorscheme solarized
"let g:solarized_termtrans = 16
"let g:solarized_bold = 1
"let g:solarized_underline = 1 
"let g:solarized_italic = 1
"let g:solarized_contrast = high
"let g:solarized_visibility= high

"This is for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"This is for indentation guides
colorscheme tomorrow 
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

"Set FZF
set rtp+=~/.fzf

"Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"NERDTREE
map <C-n> :NERDTreeToggle<CR>

"Airline Config
set laststatus=2
"Separator left and right
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
"Modified detection
let g:airline_detect_modified=1
"Paste detection
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
  
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
"Set key
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"TagBar
map <C-t> :TagbarToggle<CR>

"NeoComplete
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#auto_completion_start_length = 3
