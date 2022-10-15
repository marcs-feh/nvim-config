local opt = vim.opt

-- Creates a backup file
opt.backup = false
-- Required to keep multiple buffers open
opt.hidden = true
-- Allows neovim to access the system clipboard
opt.clipboard = "unnamedplus"
-- Command line height
opt.cmdheight = 1
-- Mostly just for cmp
opt.completeopt = { "menuone", "noselect" }
-- So that `` is visible in markdown files
opt.conceallevel = 0
-- The encoding written to a file
opt.fileencoding = "utf-8"
-- Highlight all matches on previous search pattern
opt.hlsearch = true
-- Ignore case in search patterns
opt.ignorecase = true
-- Allow the mouse to be used in neovim
opt.mouse = "a"
-- Pop up menu height
opt.pumheight = 10
-- Don't show things like -- INSERT -- anymore
opt.showmode = false
-- Always show tabs
opt.showtabline = 2
-- Smart case
opt.smartcase = true
-- Force all horizontal splits to go below current window
opt.splitbelow = true
-- Force all vertical splits to go to the right of current window
opt.splitright = true
-- Creates a swapfile
opt.swapfile = false
-- Time to wait for a mapped sequence to complete (in milliseconds)
opt.timeoutlen = 1000
-- Enable persistent undo
opt.undofile = true
-- Faster completion
opt.updatetime = 300
-- Make indenting smarter
opt.smartindent = true
-- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.writebackup = false
-- Convert tabs to spaces
opt.expandtab = false
-- Insert 2 spaces for a tab
opt.tabstop = 2
-- The number of spaces inserted for each indentation
opt.shiftwidth = 2
-- Highlight the current line
opt.cursorline = false
-- Numbered lines
opt.number = true
-- Relative numbered lines
opt.relativenumber = false
-- Number column width
opt.numberwidth = 2
-- Always show the sign column
opt.signcolumn = "yes"
-- Display lines as one long line
opt.wrap = false
-- Required for Treesitter folding
opt.foldmethod = 'expr'
-- Don't auto fold
opt.foldlevelstart = 99
-- Start scrolling N spaces early before hitting an editor wall.
opt.scrolloff = 8
opt.sidescrolloff = 12

-- Treesitter based folding
vim.cmd [[set foldexpr=nvim_treesitter#foldexpr()]]

opt.shortmess:append "c"

-- Stop fucking with my Python idents >:(
vim.g.python_recommended_style = 0

-- Colorsheme
vim.cmd [[color codedark]]

-- Stop making lines comments when pressing o, this abomination is required
-- because vim's ftplugins are fucking retarded.
vim.cmd [[autocmd FileType * set formatoptions-=o]]

