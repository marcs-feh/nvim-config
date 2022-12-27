local def_key_opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Wrapper for vim keymap
local keymap = function (mode, seq, cmd, options)
	if not options then
		options = def_key_opts
	end
 vim.api.nvim_set_keymap(mode, seq, cmd, options)
end

-- Remap space as leader key
keymap("", "<Space>", "<Nop>")
-- Q is basically useless
keymap("", "Q", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal   = "n",
--   insert   = "i",
--   visual   = "v",
--   block    = "x",
--   terminal = "t",
--   command  = "c",

-- Normal --
-- Save
keymap("n", "<C-s>", ":w<CR>")

-- Open file to edit
keymap("n", "<leader>e", ":Telescope find_files<CR>")

-- Open buffers
keymap("n", "<leader>b", ":Telescope buffers<CR>")

-- Clear search highlight
keymap("n", "<leader>l", ":noh<CR>")

-- Clear trailing whitespace
keymap("n", "<leader>W", ":%s/\\s\\+$//<CR>:noh<CR>")

-- Select all
keymap("n", "<C-a>", ":normal ggVG<CR>")

-- Better page up/down
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")

-- Split windows
keymap("n", "<leader>sh", ":split<CR>")
keymap("n", "<leader>sv", ":vsplit<CR>")

-- Expand window
keymap("n", "<leader>F", ":resize<CR>:vertical resize<CR>")

-- Better window navigation
keymap("n", "<A-h>", "<C-w>h")
keymap("n", "<A-j>", "<C-w>j")
keymap("n", "<A-k>", "<C-w>k")
keymap("n", "<A-l>", "<C-w>l")
keymap("n", "<leader>q", ":close<CR>")
keymap("n", "<leader>x", ":bdelete<CR>")
keymap("n", "<leader>X", ":bdelete!<CR>")

-- Resize windows
keymap("n", "<A-K>", ":resize +2<CR>")
keymap("n", "<A-J>", ":resize -2<CR>")
keymap("n", "<A-H>", ":vertical resize -2<CR>")
keymap("n", "<A-L>", ":vertical resize +2<CR>")

-- Re organize windows
keymap("n", "<leader>H", "<C-w>H")
keymap("n", "<leader>J", "<C-w>J")
keymap("n", "<leader>K", "<C-w>K")
keymap("n", "<leader>L", "<C-w>L")

-- Navigate buffers
keymap("n", "L", ":bnext<CR>")
keymap("n", "H", ":bprevious<CR>")

-- New buffer
keymap("n", "<leader>n", ":enew<CR>")

-- LSP shortcuts
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
keymap("n", "gw", ":lua vim.lsp.buf.document_symbol()<CR>")
keymap("n", "<C-h>", ":lua vim.lsp.buf.signature_help()<CR>")
keymap("n", "<leader>vd", ":lua vim.diagnostic.open_float()<CR>")
keymap("n", "<leader>vws", ":lua vim.lsp.buf.workspace_symbol()<CR>")
keymap("n", "<leader>vrr", ":lua vim.lsp.buf.references()<CR>")
keymap("n", "<leader>vrn", ":lua vim.lsp.buf.rename()<CR>")

-- Stop LSP
keymap("n", "<leader>S", ":LspStop<CR>")

-- Show diagnostics
keymap("n", "<leader>db", ":lua ShowBufferLspDiagnostics(0)<CR>")
keymap("n", "<leader>da", ":lua ShowLspDiagnostics()<CR>")

-- Insert --

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Quick Align
keymap("v", "<leader>a", ':lua QuickAlign(0, nil)<CR>')

-- Visual Block --
-- Move text up and down
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv")
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv")

-- Terminal --
-- Open/Close Terminal
local term_height = 6
local term_width  = 36
local term_prompt = '[%~]\n$ '

-- Bottom terminal
keymap("n", "<leader>ts",
	  ":split<CR>:resize "..term_height.."<CR>"
	..":set nonumber<CR>:set signcolumn=no<CR>"
	..":terminal<CR>aPS1=__ESC".. term_prompt .."__ESC<CR>clear<CR>")
-- Side terminal
keymap("n", "<leader>tv",
	  ":vsplit<CR>:vertical resize " .. term_width .."<CR>"
	..":set nonumber<CR>:set signcolumn=no<CR>"
	..":terminal<CR>aPS1=__ESC".. term_prompt .."__ESC<CR>clear<CR>")

-- Better terminal navigation
keymap("t", "<A-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<A-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<A-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<A-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<A-ESC>", "<C-\\><C-N>", term_opts)
keymap("t", "<C-A-d>", "<C-\\><C-N>:bdelete!<CR>", term_opts)

-- Resize in terminal mode
keymap("t", "<A-K>", "<C-\\><C-N>:resize +2<CR>a")
keymap("t", "<A-J>", "<C-\\><C-N>:resize -2<CR>a")
keymap("t", "<A-H>", "<C-\\><C-N>:vertical resize -2<CR>a")
keymap("t", "<A-L>", "<C-\\><C-N>:vertical resize +2<CR>a")

