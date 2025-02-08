return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      ---@type TSConfig
      ---@diagnostic disable-next-line: missing-fields
      treesitter.setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        -- enable indentation
        indent = { enable = true },

        -- ensure these language parsers are installed
        ensure_installed = {
          "json",
          "javascript",
          "typescript",
          "tsx",
          "yaml",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "lua",
          "vim",
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

        auto_install = false,
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = { "VeryLazy" },
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "VeryLazy" },
    enabled = true,
    opts = { mode = "cursor", max_lines = 3 },
  },
}
