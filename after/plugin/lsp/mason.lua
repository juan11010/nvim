-- import mason plugin safely
local mason = require("mason")

-- import mason-lspconfig plugin safely
local mason_lspconfig = require("mason-lspconfig")

-- enable mason
mason.setup()

mason_lspconfig.setup({
    -- list of servers for mason to install
    ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "lua_ls",
        "emmet_language_server",
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true,     -- not the same as ensure_installed
})