"author: pkolmakov
"my configuration that is similar to Rider (IDE) that I use for developing
"
"
"set background=dark
"let g:gruvbox_contrast_dark='soft'
"colorscheme gruvbox

let g:python_host_prog  = 'C:\Python27\python'
    let g:python3_host_prog = 'C:\Python310\python'

" nerdtree mapping
 " nnoremap <silent> <expr> <a-1> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(substitute(expand('%'), 'fugitive:\\\\\\\(.*\)\\.git\\\\$', '\1', '')) ? "\:NERDTreeFind<CR>" : "\:NERDTree\<CR>"
" nnoremap <silent> <expr> <a-1> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(substitute(expand('%'), 'fugitive:\\\(.*\)\\$', '\1', '')) ? "\:NERDTreeFind " . substitute(expand('%'), '.*\\\C:\\\([^\\]*\\.*\)\\.git\\', 'C:\\\1', '') ."\<CR>" : "\:NERDTree " . substitute(expand('%'), '.*\\\C:\\\([^\\]*\\.*\)\\.git\\', 'C:\\\1', '') ."\<CR>" 
nnoremap gn :NERDTreeToggle<CR>
"nnoremap <a-1> :echo bufexists(substitute(expand('%'), 'fugitive:\\\\\\\(.*\)\\.git\\\\$', '\1', ''))<CR>
nnoremap <a-5> :echo bufexists(expand('%:p:h'))<CR>
"nnoremap <silent> <expr> <a-1> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%:p:h')) ? "\:NERDTreeFind<CR>" : "\:NERDTreeToggle substitute(expand('%'), 'fugitive:\\\\\\\(.*\)\\.git\\\\$', '\1', '')<CR>"


function! ToggleNerdtree()
    let is_open = g:NERDTree.IsOpen()
    if is_open
        execute 'NERDTreeClose'
    else
        if bufexists(substitute(expand('%'), 'fugitive:\\\\\\\(.*\)\\.git\\\\$', '\1', ''))
            execute 'NERDTreeFind ' . expand('%')
        else
            let path = substitute(expand('%'), 'fugitive:\\\\\\\(.*\)\\.git\\\\$', '\1', '')
            if path != ''
                execute 'NERDTreeToggle ' . path
            else
                execute 'NERDTree'
            endif
        endif
    endif
endfunction

nnoremap <silent> <A-1> :call ToggleNerdtree()<CR>


nnoremap <leader>rnd :.,$s/
nnoremap <leader>rnu :.,0s/
nnoremap <leader>rn :%s//

" to clean up registeres
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor


 " fix splitting 
    set splitbelow splitright  
    nnoremap <leader>gd :Gvdiffsplit!<CR> 
    nnoremap gdh :diffget //2<CR> 
    nnoremap gdl :diffget //3<CR>   
    nnoremap gdp :diffput <CR>  


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


" ripgrep 
"

let g:fzf_history_dir = 'C:/Program Files/Neovim/share/fzf-history'
"nnoremap <leader>g :Rg<CR>

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
""Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)




" Use tab for trigger completion with characters ahead and navigate.
" Insert <tab> when previous text is space, refresh completion if not.
 inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1):
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
 inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
 
 function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~ '\s'
 endfunction
 
 " Use <c-space> to trigger completion.
 if has('nvim')
   inoremap <expr> <silent> <c-space> coc#refresh()
 else
   inoremap <expr> <silent> <c-@> coc#refresh()
 endif
 
 inoremap <expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"



" my mappings where I open ide when I'm on a file
nmap <silent> <leader>gpf :OpenInIde 'phpstorm'<CR>
nmap <silent> <leader>gif :OpenInIde 'intellij'<CR>
nmap <silent> <leader>gwf :OpenInIde 'webstorm'<CR>
command! -nargs=1 OpenInIde call OpenIde(<args>)

function! OpenIde(ide_type)
    let path = expand("%:p")
    let line = line(".")
    if(a:ide_type == 'phpstorm')
        execute ':!phpstorm --line '.line.' '.path
    endif
    if(a:ide_type == 'intellij')
        execute ':!idea --line '.line.' '.path
    endif
    if(a:ide_type == 'webstorm')
        execute ':!webstorm --line '.line.' '.path
    endif
endfunction
