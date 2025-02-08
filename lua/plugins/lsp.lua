return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "williamboman/mason.nvim", opts = {} },
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local config = require("lspconfig")

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "emmet_language_server",
        "tailwindcss",
        "html",
        "cssls",
        "astro",
        "eslint",
      },
    })

    -- keymaps
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "grr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<space>nn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "<leader>ih", function()
          vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
        end, opts)
      end,
    })

    -- Servers
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        config[server_name].setup({})
      end,

      -- Server configs
      ["lua_ls"] = function()
        config["lua_ls"].setup({
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              codeLens = {
                enable = true,
              },
              completion = {
                callSnippet = "Replace",
              },
              doc = {
                privateName = { "^_" },
              },
              hint = {
                enable = true,
                setType = false,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
              },
            },
          },
        })
      end,
    })
  end,
}
