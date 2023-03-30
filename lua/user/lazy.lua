local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    --telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    -- treesitter
    'nvim-treesitter/nvim-treesitter',
    -- LSP zero
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    },
    -- Themes
    'folke/tokyonight.nvim',
    {
        'catppuccin/nvim',
        as = 'catppuccin'
    },
    ---PLugins---
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    'theprimeagen/harpoon',
    'gruvbox-community/gruvbox',
    'lewis6991/impatient.nvim',
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    'tpope/vim-fugitive',
    'lukas-reineke/indent-blankline.nvim',
    'github/copilot.vim',
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            exclude_filetypes = { "netrw" },
            show_dirname = false,
        },
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
