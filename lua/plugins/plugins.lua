local plugins = {
--     {'nvim-lua/popup.nvim'},
    {"kyazdani42/nvim-web-devicons", lazy=true},
    -- show tags
    "preservim/tagbar",
    {'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = true
    },
    require 'plugins.toggleterm',
    require 'plugins.lualine',
    require "plugins.nvim_tree",
    require "plugins.nvim_treesit",
    require "plugins.vim_go",
    {'nvim-telescope/telescope.nvim',dependencies = {'nvim-lua/plenary.nvim'}},
    -- notification
    -- example require("notify")("My super important message")
    'rcarriga/nvim-notify',
    require "plugins.nvim_cmp",
    -- даже если включена русская раскладка, то nvim-команды будут работать
    'powerman/vim-plugin-ruscmd',
  -- Which-key
    {'folke/which-key.nvim',
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            end,
        opts = {}
    },
  -- window navigation parity between tmux
    'christoomey/vim-tmux-navigator',
    {'catppuccin/nvim', name = 'catppuccin'},
    {'stevearc/dressing.nvim'},
    {"williamboman/mason.nvim", config=true},
    {"williamboman/mason-lspconfig.nvim", config=true},
    {'neovim/nvim-lspconfig'},
}
return plugins;
