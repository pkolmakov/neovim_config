
return { "ellisonleao/gruvbox.nvim",
config = function()
-- Default options:
require("gruvbox").setup({
  contrast = "soft", -- can be "hard", "soft" or empty string
})
vim.cmd("colorscheme gruvbox")
    end
}
