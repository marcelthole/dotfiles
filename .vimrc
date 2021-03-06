set title
set autoread
set gdefault
set cursorline
set noerrorbells
set vb t_vb=
set number
set showmode
syntax enable
set background=dark

" Text, tab and indent related
set autoindent    " Keep the indent when creating a new line
set copyindent    " Copy the previous indentation on autoindent
set expandtab     " Spaces instead of tabs for better cross-editor compatibility
set shiftwidth=4  " Number of spaces to use in each autoindent step
set smarttab      " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set softtabstop=4 " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set tabstop=4     " Two tab spaces

" Search
set hlsearch      " highlight all matches...
set ignorecase      " select case-insenitiv search
set incsearch       " ...and also during entering the pattern

set showmatch       " jump to matches during entering the pattern

