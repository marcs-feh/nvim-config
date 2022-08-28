-- Use ~/.config/nvim/snippets for vsnip instead of cluttering ~/
local snippet_dir = os.getenv("HOME").."/.config/nvim/vsnip"
vim.cmd("let g:vsnip_snippet_dir ='" .. snippet_dir .. "'")

