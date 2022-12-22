"To eliminate white background on popups
    au VimEnter * GuiPopupmenu 0

" tabs
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set smartindent

" if I search using UpperCase only then it will search like that
    set smartcase 

" enable reading .vimrc/.exrc/.gvimrc in the current directory
    set exrc

" specifies what the cursor looks like in different modes. Currently there are
" no cursors set
    set guicursor=

" relative numbers 
    set relativenumber
    set nu

" no highlight searches
    set nohlsearch

" don't unload a buffer when no longer shown in a window
    set hidden

" dont show bells on errors
    set noerrorbells

" I don't need wrapping
    set nowrap

" I don't need files for buffers and buckup
    set noswapfile
    set nobackup

" map leader key to space. Need to place before plugins loading
    nnoremap <Space> <Nop>
    let mapleader = "\<Space>"
" need to create it by your sefl
    set undodir=~/.vim/undodir
    set undofile

" show match for partly typed search command
    set incsearch

" use GUI colors for the terminal
    set termguicolors

" number of screen lines to show around the cursor
    set scrolloff=8

" Column that shows wide of writable screen (border)
    set signcolumn=yes
    set colorcolumn=80
    highlight ColorColumn ctermbg=0 guibg=lightgrey

    set encoding=utf-8

" Yank and paste with the system clipboard
    set clipboard=unnamedplus

    set nofoldenable

    set background=dark

"работа с буфером
    nnoremap ]b :bnext<cr>
    nnoremap [b :bprevious<cr>
    nnoremap ]B :bfirst<cr>
    nnoremap [B :blast<cr>

"работа с табами
        nnoremap ]t :tabnext<cr>
        nnoremap [t :tabprevious<cr>
        nnoremap ]T :tabfirst<cr>
        nnoremap [T :tablast<cr>

"работа с split screens
    nnoremap <leader>h :wincmd h<cr>
    nnoremap <leader>j :wincmd j<cr>
    nnoremap <leader>k :wincmd k<cr>
    nnoremap <leader>l :wincmd l<cr>

" .,$s/from/to/gc | nothing to replace all
nnoremap <leader>rnd :.,$s/
nnoremap <leader>rnu :.,0s/
nnoremap <leader>rn :%s//


nnoremap <leader>q :bd<cr>

"let g:sql_type_default = "sql"

" It solves problem with white bg for autocomplete popup
"GuiPopupMenu 0 but it need to be started somewhere
"for now you can enter it when session starts

"Tips:
 " Отсортировать строчки - выделить и команда sort
 " Отсортировать строчки и удалить дубликаты - выделить и sort u
" Выделить одинаковые и изменить Контрл + n
" Вставить в коммандную строку: нажми CTRL+R Номер регистра ( например => ")
" номер регистра можно уточнить командой reg
" to install regrip need to put exe file in the root of neovim
