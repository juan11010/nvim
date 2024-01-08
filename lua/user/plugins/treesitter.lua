return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            -- import nvim-treesitter plugin
            local treesitter = require("nvim-treesitter.configs")

            -- configure treesitter
            treesitter.setup({ -- enable syntax highlighting
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                -- enable indentation
                indent = { enable = true },

                -- ensure these language parsers are installed
                ensure_installed = {
                    "json",
                    "python",
                    "javascript",
                    "typescript",
                    "tsx",
                    "yaml",
                    "html",
                    "css",
                    "prisma",
                    "markdown",
                    "markdown_inline",
                    "svelte",
                    "bash",
                    "lua",
                    "vim",
                    "dockerfile",
                    "gitignore",
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },

                -- auto install above language parsers
                auto_install = true,
            })
        end,
    },
}
