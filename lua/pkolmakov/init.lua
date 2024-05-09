vim.g.mapleader = " "
require("pkolmakov.lazy")
require("lazy").setup("pkolmakov.plugins")
require("pkolmakov.remap")
require("pkolmakov.set")


vim.o.background ="dark"  				
vim.g.gruvbox_contrast_dark="soft"		
vim.cmd([[colorscheme gruvbox]])

--_G.OnTabEnter = function(input_path)
--    local path = string.gsub(input_path, pattern, '%1')
--   if vim.fn.isdirectory(path) == 1 then
--        local dirname = path
--    else
--        local dirname = vim.fn.fnamemodify(path, ":h")
--    end
--
--   if dirname ==nil then
--      return
--    end

--   vim.api.nvim_command("tcd " .. dirname)
--end

-- Define the autocmd to call OnTabEnter
--vim.api.nvim_exec([[
--    autocmd TabNewEntered * call v:lua.OnTabEnter(expand("<amatch>"))
--]], false)



---- Define a function to open the IDE
--local function OpenIde(ide_type)
--    local path = vim.fn.expand("%:p")
--    local line = vim.fn.line(".")
--    if ide_type == 'phpstorm' then
--        vim.api.nvim_command("!phpstorm --line " .. line .. " " .. path)
--    elseif ide_type == 'intellij' then
--        vim.api.nvim_command("!idea --line " .. line .. " " .. path)
--    elseif ide_type == 'webstorm' then
--        vim.api.nvim_command("!webstorm --line " .. line .. " " .. path)
--    end
--end
--
---- Define mappings to open the IDE
--vim.api.nvim_set_keymap('n', '<leader>gpf', ':lua OpenIde("phpstorm")<CR>', { silent = true })
--vim.api.nvim_set_keymap('n', '<leader>gif', ':lua OpenIde("intellij")<CR>', { silent = true })
--vim.api.nvim_set_keymap('n', '<leader>gwf', ':lua OpenIde("webstorm")<CR>', { silent = true })

-- "для поиска по содержимому буфера
-- "как искать - главное вставить искомую строчку в буфер поиска (это слеш)
-- "потом нажать комбинацию ,f и будет тебе поиск
vim.api.nvim_set_keymap('n', ',f', [[:lua require('filtering').new():add_to_parameter('alt', vim.fn.getreg('/')):run()<CR>]], { silent = true })


--Tips:
--" Отсортировать строчки - выделить и команда sort
-- Отсортировать строчки и удалить дубликаты - выделить и sort u
-- Выделить одинаковые и изменить Контрл + n
-- Вставить в коммандную строку: нажми CTRL+R Номер регистра ( например => ")
-- номер регистра можно уточнить командой reg
-- to install regrip need to put exe file in the root of neovim


-- nnoremap <silent> <expr> <a-1> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(substitute(expand('%'), 'fugitive:\\\\\\\(.*\)\\.git\\\\$', '\1', '')) ? "\:NERDTreeFind<CR>" : "\:NERDTree\<CR>"
--vim.api.nvim_set_keymap('n', '<A-1>', '<cmd>lua require("my_module").toggle_nerdtree()', { silent = true, expr = true })

--vim.api.nvim_set_keymap('n', '<A-1>', '<cmd>lua toggle_nerdtree()<CR>', { silent = true, noremap = true })
-- Define the function to toggle NERDTree
--function toggle_nerdtree()
--    local is_open = vim.g.NERDTree.IsOpen()
--    if is_open then
--        vim.cmd('NERDTreeClose')
--    else
--        if vim.fn.bufexists(vim.fn.expand('%:p:h')) then
--            vim.cmd('NERDTreeFind')
--        else
--   local path = vim.fn.substitute(vim.fn.expand('%'), 'fugitive:\\\\\\\\(.*)\\.git\\\\$', '\\1', '')
--            if (path ~='') then
--                vim.cmd('NERDTreeToggle ' .. path)
--            else
--                vim.cmd('NERDTree')
--            end
--        end
--    end
--end







