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
            },
            builtin ={
                syntax_limit_b = 0
            }
        })

vim.keymap.set("n", "<c-F>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set("n", "<leader>g",function()
            require('fzf-lua').live_grep_native({cwd = vim.fn.getcwd()})
        end, {noremap = true})

--vim.api.nvim_set_keymap("n", "<leader>g", ":FzfLua live_grep_native<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ggf", ":FzfLua git_files<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ggc", ":FzfLua git_commits<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ggb", ":FzfLua git_branches<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ggt", ":FzfLua git_tags<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ggs", ":FzfLua git_stash<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gg", ":FzfLua blines<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>cg", ":FzfLua commands<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gh", ":FzfLua command_history<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gr", ":FzfLua registers<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gb", ":FzfLua buffers<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gt", ":FzfLua tabs<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gw", ":FzfLua grep_cword<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gv", ":FzfLua grep_visual<CR>", {noremap = true})
--vim.keymap.set("n", "<leader>g", "<cmd>lua require('fzf-lua').`live_grep_native()<CR>", { silent = true })
  end
}
