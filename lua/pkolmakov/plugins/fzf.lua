return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = {
        {"nvim-tree/nvim-web-devicons"},
        { "junegunn/fzf", build = "./install --bin" },
    },
  config = function()
    -- calling `setup` is optional for customization
        require("fzf-lua").setup({

            winopts = {
                width = 1.0,
        fullscreen       = true,           -- start fullscreen?
            }
        })

vim.keymap.set("n", "<c-F>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set("n", "<leader>g",function()
            require('fzf-lua').live_grep_native({cwd = vim.fn.getcwd()})
        end, {noremap = true})

--vim.api.nvim_set_keymap("n", "<leader>g", ":FzfLua live_grep_native<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fg", ":FzfLua git_files<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gg", ":FzfLua blines<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>c", ":FzfLua commands<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ch", ":FzfLua command_history<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fr", ":FzfLua registers<CR>", {noremap = true})
--vim.keymap.set("n", "<leader>g", "<cmd>lua require('fzf-lua').`live_grep_native()<CR>", { silent = true })
  end
}
