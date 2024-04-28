return {
{"nathanaelkane/vim-indent-guides"},
{'iamcco/markdown-preview.nvim'},
{'junegunn/limelight.vim'},
{"ntpeters/vim-better-whitespace"},
{"mhinz/vim-signify"},
--{"airblade/vim-rooter"},
--{"kyazdani42/nvim-web-devicons"},
{"vim-airline/vim-airline"},
{"tpope/vim-surround"},
{"bronson/vim-visual-star-search"},
{"jeetsukumaran/vim-buffergator"},
{"will133/vim-dirdiff"},
{"AndrewRadev/linediff.vim"},
{"vim-scripts/copypath.vim"},
{"matze/vim-move"},
{"mg979/vim-visual-multi"},
{"chrisbra/changesPlugin"},
{"vim-scripts/ViewOutput"},
{"vim-scripts/Quich-Filter"},
{"honza/vim-snippets"},
{"jiangmiao/auto-pairs"},
{"yuezk/vim-js"},
{"HerringtonDarkholme/yats.vim"},
{"maxmellon/vim-jsx-pretty"},
{"rstacruz/vim-closer"},
{"easymotion/vim-easymotion"},
{"chr4/nginx.vim"},
{"othree/javascript-libraries-syntax.vim"},
{"othree/yajs.vim"},
{"nickspoons/vim-sharpenup"},
{"majutsushi/tagbar"},
{"leafgarland/typescript-vim"},
{"mbbill/undotree"},
{"diepm/vim-rest-console"},
{"mattn/emmet-vim"},
{"othree/html5.vim"},
{"kshenoy/vim-signature"},
{"mfussenegger/nvim-jdtls"},
{"aklt/plantuml-syntax"},
{"weirongxu/plantuml-previewer.vim"},
{"tyru/open-browser.vim"},
{"ekalinin/Dockerfile.vim"},
{"tomasiser/vim-code-dark"},
{"craigmac/vim-mermaid"},
{
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup({
        max_lines = 5,
      })
    end,
  },
{ "nvim-treesitter/nvim-treesitter-textobjects" },
{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
{'RRethy/vim-illuminate'},
{
  'stevearc/oil.nvim',
    config = function()
            require("oil").setup({
              default_file_explorer = false,
            })
        vim.keymap.set("n", "<A-2>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
},
}
