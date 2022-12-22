" Set this to 1 to use ultisnips for snippet handling
let s:using_snippets = 0
" I set the path because I have account name on Russian but here
" we shoul past path like '~/AppData/Local/nvim/plugged'
call plug#begin('~/AppData/Local/nvim/plugged')
" NERDTree
 Plug 'preservim/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'unkiwii/vim-nerdtree-sync'
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

 Plug 'airblade/vim-gitgutter'
 Plug 'ctrlpvim/ctrlp.vim'

"Plug 'frazrepo/vim-rainbow'
 Plug 'nathanaelkane/vim-indent-guides'

 " Better display unwanted whitespace.
 Plug 'ntpeters/vim-better-whitespace'

 " Show git file changes in the gutter.
 Plug 'mhinz/vim-signify'

 "Plug 'mileszs/ack.vim'
 "Plug 'nvim-lua/completion-nvim'
 "Plug 'prabirshrestha/asyncomplete.vim'

 Plug 'morhetz/gruvbox'

 Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
 Plug 'junegunn/fzf.vim'
 Plug 'airblade/vim-rooter'
 "Plug 'stsewd/fzf-checkout.vim'
 Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

 Plug 'BurntSushi/ripgrep'
 "jesseleite/vim-agriculture чтобы можно было вызывать Rg с флагами
 "нужен чтобы был fzf + ripgrep: RgRaw SomeWord -t someFileType
 "или RgRaw "some word" -t someFileType
 "или RgRaw "some words"/justWord -g *.SomeExtension
 Plug 'jesseleite/vim-agriculture'

 Plug 'kyazdani42/nvim-web-devicons'

 Plug 'tpope/vim-fugitive'
 Plug 'vim-airline/vim-airline'

 " Autoclosing squares
 Plug 'tpope/vim-surround'

 "Search by selection using * or #
 Plug 'bronson/vim-visual-star-search'

 " Inform sintaxis
 "Plug 'statico/vim-inform7'

 Plug 'jeetsukumaran/vim-buffergator'

 "To check diff between directories
 Plug 'will133/vim-dirdiff'
 " Run a diff on 2 blocks of text.
 Plug 'AndrewRadev/linediff.vim'

 "To copy buffer's path
 Plug 'vim-scripts/copypath.vim'

 "перетаскивание выделенных кусков кода https://vimawesome.com/plugin/move
 Plug 'matze/vim-move'

 "Курсоры как в саблиме https://vimawesome.com/plugin/vim-visual-multi
 Plug 'mg979/vim-visual-multi'

 "Показывает изменения лучше
 Plug 'chrisbra/changesPlugin'

 "Be able to look output just just print VO before any command
 Plug 'vim-scripts/ViewOutput'

 "Search strings (Get list of founded strings)
 Plug 'vim-scripts/Quich-Filter'

 Plug 'honza/vim-snippets'

 "-------Javascript plugins
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile', 'branch':'release'} " this is for auto complete, prettier and tslinting

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-db','coc-fzf-preview','coc-snippets','coc-omnisharp','coc-phpls']  " list of CoC extensions needed 

Plug 'antoinemadec/coc-fzf'

Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'
" === Syntax Highlighting === "

" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'
"------C#
Plug 'OmniSharp/omnisharp-vim'
"for debugging
"Plug 'puremourning/vimspector'
" Mappings, code-actions available flag and statusline integration
Plug 'nickspoons/vim-sharpenup'
" works with ale
Plug 'itchyny/lightline.vim'
" Linting/error highlighting
" Removed ale temporary
Plug 'dense-analysis/ale'
"Required for nuget
Plug 'mattn/webapi-vim'
Plug 'Shougo/deoplete.nvim'
"end required for nuget
Plug 'markwoodhall/vim-nuget'
" Snippet support
if s:using_snippets
  Plug 'sirver/ultisnips'
endif
"Показывать методы класса
Plug 'majutsushi/tagbar'

"For writing markdowns

" Dim paragraphs above and below the active paragraph.
 Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
 Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
 Plug 'junegunn/limelight.vim'

" Vim Script
Plug 'folke/zen-mode.nvim'

lua << EOF
  require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

"-----typeScript
Plug 'leafgarland/typescript-vim'

Plug 'mbbill/undotree'
" database
Plug 'tpope/vim-dadbod'

Plug 'diepm/vim-rest-console' 
"----html---
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'kshenoy/vim-signature'
"Plug 'turbio/bracey.vim'
"Plug 'cosminadrianpopescu/vim-sql-workbench'
"JAVA
"Plug 'natebosch/vim-lsc'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'mfussenegger/nvim-jdtls'

"lua << EOF
"    require'nvim-treesitter.configs'.setup {
"        ensure_installed = "maintained",
"        highlight = {
"            enable = true,
"            },
"        }
"EOF

Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'

Plug 'ekalinin/Dockerfile.vim'
Plug 'tomasiser/vim-code-dark'

Plug 'vim-vdebug/vdebug'
call plug#end()

let g:vdebug_options = {
\ 'break_on_open': 0,
\ 'path_maps': {
\   '/var/www/html' : 'C:\users\pkolmakov\Documents\OneInc\Docker\scrm\InsurPay_SuiteCRM\App',
\   '/var/www/html/index.php' : 'C:\users\pkolmakov\Documents\OneInc\Docker\scrm\InsurPay_SuiteCRM\App\index.php',
\   '/var/www/html/modules' : 'C:\users\pkolmakov\Documents\OneInc\Docker\scrm\InsurPay_SuiteCRM\App\modules',
\   '/var/www/html/themes/Suite7/css' : 'C:\users\pkolmakov\Documents\OneInc\Docker\scrm\InsurPay_SuiteCRM\App\themes\Suite7\css'
\ },
\ 'port': '9003',
\ 'watch_window_style': 'expanded',
\ 'layout':'horizontal',
\ 'debug_file':'C:\users\pkolmakov\Documents\OneInc\Docker\scrm\InsurPay_SuiteCRM\App\xdebug_custom.log',
\ 'debug_file_level':'1'
\ }

"let g:vimspector_enable_mappings = 'HUMAN'
