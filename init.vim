"author: pkolmakov
"my configuration that is similar to Rider (IDE) that I use for developing
"
    let g:python_host_prog  = 'C:\Python27\python'
    let g:python3_host_prog = 'C:\Python310\python'

    source ~/AppData/local/nvim/general-settings.vim
    source ~/AppData/local/nvim/my-pluggins.vim
    source ~/AppData/local/nvim/my-dotnet-configuration.vim
    source ~/AppData/Local/nvim/intelephense.vim
    source ~/AppData/Local/nvim/workingDirrectory.vim

augroup java_commands
  autocmd!
  autocmd FileType java nmap <silent> <buffer> <Leader>gd <cmd>lua vim.lsp.buf.declaration()<CR>
augroup END

    let g:gruvbox_contrast_dark='soft'
    colorscheme gruvbox

    "let g:lsc_server_commands = {'java': 'D:\gitwork\Java\dist\lang_server_windows.sh'}

    set background=dark
    let g:gruvbox_contrast_dark='soft'
    colorscheme gruvbox

"работа с ale
    nnoremap ]a :ALENext<cr>
    nnoremap [a :ALEPrevious<cr>
    nnoremap ]A :ALENextWrap<cr>
    nnoremap [A :ALEPreviousWrap<cr>

"Работа с зеном
    nnoremap <leader>z :ZenMode<cr>

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
    nnoremap gn :NERDTreeToggle<CR>

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
" For dadbod to connect just use :DB w:db=sqlserver://NameHost
