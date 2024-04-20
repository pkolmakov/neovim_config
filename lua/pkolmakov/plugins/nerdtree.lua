
return {"preservim/nerdtree",
    config = function()

vim.g.NERDTreeWinSize = 80
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeHighlightCursorline = 1


--vim.api.nvim_set_keymap('n', '<A-1>', ':NERDTreeToggle<CR>', { noremap = true })


vim.g.NERDTreeDirArrowExpandable = '⬏'
vim.g.NERDTreeDirArrowCollapsible = '⬎'


--" Hide certain files and directories from NERDTree
vim.g.NERDTreeIgnore = {'^\\.DS_Store$', '^tags$', '\\.git$[[dir]]', '\\.idea$[[dir]]', '\\.sass-cache$'}
end,
}
