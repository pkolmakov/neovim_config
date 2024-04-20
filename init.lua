require("pkolmakov")



--loading my old configurations from vimrc.vim
--I couldn't move them to lua
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

