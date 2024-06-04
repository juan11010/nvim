return {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics

        null_ls.setup({
            sources = {
                -- Formatting
                formatting.stylua,
                formatting.prettier,

                -- Diagnostics
                diagnostics.codespell,
            },
        })

        vim.keymap.set("n", "<space>lf", function()
            vim.lsp.buf.format({ async = true })
        end, {})
    end,
}
