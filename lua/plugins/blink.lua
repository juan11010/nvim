return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  dependencies = {
    "rafamadriz/friendly-snippets",
    { "L3MON4D3/LuaSnip", version = "v2.*" },
  },
  version = "*",
  opts = {
    keymap = { preset = "default" },
    signature = { enabled = true },
    snippets = { preset = "luasnip" },
    appearance = {
      use_nvim_cmp_as_default = true,
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
}
