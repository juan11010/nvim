local colorscheme = "gruvbox"

if colorscheme == "onedark" then
    require('onedark').setup {
        style = 'cool'
    }
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    return
end
