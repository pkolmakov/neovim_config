"author: pkolmakov
"my configuration that is similar to Rider (IDE) that I use for developing
"
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


let g:python_host_prog  = 'C:\Python27\python'
let g:python3_host_prog = 'C:\Python38\python'

source ~/AppData/local/nvim/my-pluggins.vim
source ~/AppData/local/nvim/my-dotnet-configuration.vim


set background=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox

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
"работа с табами
nnoremap ]a :ALENext<cr>
nnoremap [a :ALEPrevious<cr>
nnoremap ]A :ALENextWrap<cr>
nnoremap [A :ALEPreviousWrap<cr>
"Работа с зеном
nnoremap <leader>z :ZenMode<cr>
"работа с split screens
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

nnoremap <leader>u :UndotreeShow<cr>

nnoremap <leader>t :BuffergatorTabsOpen<CR>

"начать с начала - очистить буфферы и открыть гит
nnoremap <leader>qq :%bd \| :Git \| :only \| <CR>

 " fix splitting 
 set splitbelow splitright  
 nnoremap <leader>gd :Gvdiffsplit!<CR> 
 nnoremap gdh :diffget //2<CR> 
 nnoremap gdl :diffget //3<CR>   
 nnoremap gdp :diffput <CR>  
 
" nerdtree mapping 
"silent! map <a-1> :NERDTreeFind<cr>  
"let g:NERDTreeMapQuit="<a-1>"
nnoremap <silent> <expr> <a-1> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" tags mapping 
silent! map <Leader>; :TagbarOpenAutoClose<cr>  

nmap <A-2> :Buffers<CR>  
"nmap <C-f> :F<CR>

let g:rainbow_active = 1 
let g:indent_guides_enable_on_vim_startup = 1
let g:NERDTreeWinSize = 80
let g:NERDTreeShowHidden = 1  
let g:NERDTreeHighlightCursorline = 1

"let g:dbext_default_profile_SQLServer_db  = 'type=SQLSRV:user=databaseUserName:passwd=PasswordHere:srvname=LocalMachineName:dbname=DatabaseName'

 "для поиска по содержимому буфера
 "как искать - главное вставить искомую строчку в буфер поиска (это слеш)
 "потом нажать комбинацию ,f и будет тебе поиск
 nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>

" Custom icons for expandable/expanded directories
let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
 
    "Чтобы выйти из терминала с помощью Esc
    "tnoremap <Esc> <C-\><C-n>
 
" .,$s/from/to/gc | nothing to replace all
nnoremap <leader>rnd :.,$s/
nnoremap <leader>rnu :.,0s/
nnoremap <leader>rn :%s//
" Xaml
au BufNewFile,BufRead *.xaml        setf xml

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }


let g:vimspector_enable_mappings = 'HUMAN'

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
