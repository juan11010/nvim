return {
    "nvimtools/none-ls.nvim",
    -- lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics
        local code_actions = null_ls.builtins.code_actions

        null_ls.setup({
            sources = {
                -- Formatting
                formatting.stylua,
                formatting.prettier,

                -- Diagnostics
                diagnostics.codespell,
                diagnostics.eslint_d.with({
                    condition = function (utils)
                        return utils.root_has_file(".eslintrc.js", ".eslintrc.cjs")
                    end
                }),

                -- Code actions
                code_actions.eslint_d.with({
                    condition = function (utils)
                        return utils.root_has_file(".eslintrc.js", ".eslintrc.cjs")
                    end
                }),
            },
        })
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
    end,
}
