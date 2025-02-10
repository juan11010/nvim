return {
  {
    {
      "L3MON4D3/LuaSnip",
      lazy = true,
      version = "v2.*",
      dependencies = "rafamadriz/friendly-snippets",
      opts = {
        history = true,
        delete_check_events = "TextChanged",
      },
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
      end,
    },
  },
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    version = "*",
    opts = {
      keymap = { preset = "default" },
      snippets = { preset = "luasnip" },
      signature = { enabled = true },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },
      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 200 },
        menu = {
          auto_show = function(ctx)
            return ctx.mode ~= "cmdline"
          end,
        },
      },
      enabled = function()
        return not vim.tbl_contains({ "oil", "markdown" }, vim.bo.filetype)
          and vim.bo.buftype ~= "prompt"
          and vim.b.completion ~= false
      end,
    },
  },
}
