
local vim = vim
local api = vim.api

api.nvim_set_keymap("n", "]b", ":bnext<CR>", {noremap = true})
api.nvim_set_keymap("n", "[b", ":bprevious<CR>", {noremap = true})
api.nvim_set_keymap("n", "]B", ":blast<CR>", {noremap = true})
api.nvim_set_keymap("n", "[B", ":bfirst<CR>", {noremap = true})

api.nvim_set_keymap("n", "]t", ":tabnext<CR>", {noremap = true})
api.nvim_set_keymap("n", "[t", ":tabprevious<CR>", {noremap = true})
api.nvim_set_keymap("n", "]T", ":tablast<CR>", {noremap = true})
api.nvim_set_keymap("n", "[T", ":tabfirst<CR>", {noremap = true})

api.nvim_set_keymap("n", "<leader>h", ":wincmd h<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>j", ":wincmd j<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>k", ":wincmd k<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>l", ":wincmd l<CR>", {noremap = true})

api.nvim_set_keymap("n", "<leader>q", ":bd<CR>", {noremap = true})

api.nvim_set_keymap("n", "<leader>u", ":UndotreeShow<CR>", {noremap = true})

--api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>t", ":BuffergatorTabsOpen<CR>", {noremap = true})

api.nvim_set_keymap("n", "<leader>;", ":TagbarOpenAutoClose<CR>", {silent = false})
api.nvim_set_keymap("n", "<C-->", "zfa{<CR>", {silent= true})
api.nvim_set_keymap("n", "<C-=>", "zo<CR>", {silent= true})


-- .,$s/from/to/gc | nothing to replace all
    --noremap <leader>rnd :.,$s/
    --noremap <leader>rnu :.,0s/
    --noremap <leader>rn :%s//
--
-- fix splitting 
    --  set splitbelow splitright  
    -- nnoremap <leader>gd :Gvdiffsplit!<CR> 
    -- nnoremap gdh :diffget //2<CR> 
    -- nnoremap gdl :diffget //3<CR>   
    --nnoremap gdp :diffput <CR>  
--

--для поиска по содержимому буфера
--как искать - главное вставить искомую строчку в буфер поиска (это слеш)
--потом нажать комбинацию ,f и будет тебе поиск
    -- #nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<A-3>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
