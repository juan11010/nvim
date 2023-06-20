local colorscheme = "catppuccin"

if colorscheme == "catppuccin" then
    require('catppuccin').setup {
        flavour = 'mocha'
    }
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    return
end
