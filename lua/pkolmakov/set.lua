vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.guicursor=''
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir='~/.vim/undodir'
vim.opt.undofile=true
vim.opt.incsearch=true
vim.opt.termguicolors=true
vim.opt.scrolloff=8
vim.opt.signcolumn='yes'
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn='80'
vim.cmd('highlight ColorColumn ctermbg=0 guibg=lightgrey')
vim.opt.encoding='utf-8'
vim.opt.clipboard='unnamedplus'
vim.opt.foldenable = false
vim.opt.updatetime = 50


vim.g.rainbow_active = 1 
vim.g.indent_guides_enable_on_vim_startup = 1
