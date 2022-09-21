local opt = vim.opt

opt.backup = false                          -- creates a backup file
opt.hidden = true                           -- Required to keep multiple buffers open
opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
opt.conceallevel = 0                        -- so that `` is visible in markdown files
opt.fileencoding = "utf-8"                  -- the encoding written to a file
opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.ignorecase = true                       -- ignore case in search patterns
opt.mouse = "a"                             -- allow the mouse to be used in neovim
opt.pumheight = 10                          -- pop up menu height
opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
opt.showtabline = 2                         -- always show tabs
opt.smartcase = true                        -- smart case
opt.splitbelow = true                       -- force all horizontal splits to go below current window
opt.splitright = true                       -- force all vertical splits to go to the right of current window
opt.swapfile = false                        -- creates a swapfile
opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
opt.undofile = true                         -- enable persistent undo
opt.updatetime = 300                        -- faster completion (4000ms default)
opt.smartindent = true                      -- make indenting smarter again
opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.expandtab = false                       -- convert tabs to spaces
opt.tabstop = 2                             -- insert 2 spaces for a tab
opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
opt.cursorline = false                      -- highlight the current line
opt.number = true                           -- set numbered lines
opt.relativenumber = false                  -- set relative numbered lines
opt.numberwidth = 2                         -- set number column width to 2 {default 4}
opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
opt.wrap = false                            -- display lines as one long line
opt.foldmethod = 'expr'                     -- required for TS folding
opt.foldlevelstart = 99                     -- don't auto fold
opt.scrolloff = 8                           -- is one of my fav
opt.sidescrolloff = 8

vim.cmd [[set foldexpr=nvim_treesitter#foldexpr()]] -- Treesitter based folding

opt.shortmess:append "c"

-- Stop fucking with my Python idents >:(
vim.g.python_recommended_style = 0

-- Colorsheme
vim.cmd [[color codedark]]

-- Stop making lines comments when pressing o, this abomination is required
-- because vim's ftplugins are fucking retarded.
vim.cmd [[autocmd FileType * set formatoptions-=o]]

