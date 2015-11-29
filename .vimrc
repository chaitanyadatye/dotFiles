syntax enable 
filetype indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set showcmd
set showmatch
set mouse=a
set pastetoggle=<F10>
set showcmd
set hlsearch
set incsearch
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

execute pathogen#infect()
