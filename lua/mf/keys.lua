local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
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
keymap("n", "<C-s>", ":w<CR>", opts)

-- Open file to edit
keymap("n", "<leader>e", ":Telescope find_files<CR>", opts)

-- Open buffers
keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)

-- Clear search highlight
keymap("n", "<leader>l", ":noh<CR>", opts)

-- Clear trailing whitespace
keymap("n", "<leader>W", ":%s/\\s\\+$//<CR>:noh<CR>", opts)

-- Select all
keymap("n", "<C-a>", ":normal ggVG<CR>", opts)

-- Open config for editing
keymap("n", "<C-A-c>", ":e ~/.config/nvim/<CR>", opts)

-- Better page up/down
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)

-- Split windows
keymap("n", "<leader>s", ":split<CR>", opts)
keymap("n", "<leader>v", ":vsplit<CR>", opts)

-- Expand window
keymap("n", "<C-A-f>", ":resize<CR>:vertical resize<CR>", opts)

-- Better window navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<leader>q", ":close<CR>", opts)
keymap("n", "<leader>x", ":bdelete<CR>", opts)
keymap("n", "<leader>X", ":bdelete!<CR>", opts)

-- Resize windows
keymap("n", "<A-K>", ":resize +2<CR>", opts)
keymap("n", "<A-J>", ":resize -2<CR>", opts)
keymap("n", "<A-H>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-L>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<C-j>", ":m .+1<CR>==", opts)
keymap("n", "<C-k>", ":m .-2<CR>==", opts)

-- Navigate buffers
keymap("n", "L", ":bnext<CR>", opts)
keymap("n", "H", ":bprevious<CR>", opts)

-- New buffer
keymap("n", "<leader>n", ":enew<CR>", opts)

-- LSP shortcuts
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "gw", ":lua vim.lsp.buf.document_symbol()<CR>", opts)
keymap("n", "gw", ":lua vim.lsp.buf.workspace_symbol()<CR>", opts)
keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "gt", ":lua vim.lsp.buf.type_definition()<CR>", opts)
keymap("n", "K",  ":lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<C-A-k>",    ":lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>af", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts)

-- Stop LSP
keymap("n", "<leader>S", ":LspStop<CR>", opts)

-- Insert --

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "p", '"_dP', opts)

-- Quick Align
keymap("v", "<leader>a", ':lua QuickAlign(0, nil)<CR>', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Open/Close Terminal
local term_height = 8
local term_width  = 36
local term_prompt = '%~ > '

-- Bottom terminal
keymap("n", "<leader>`",
	  ":split<CR>:resize "..term_height.."<CR>"
	..":set nonumber<CR>:set signcolumn=no<CR>"
	..":terminal<CR>aPS1=\"".. term_prompt .."\"<CR>clear<CR>", opts)
-- Side terminal
keymap("n", "<leader>t",
	  ":vsplit<CR>:vertical resize " .. term_width .."<CR>"
	..":set nonumber<CR>:set signcolumn=no<CR>"
	..":terminal<CR>aPS1=\"".. term_prompt .."\"<CR>clear<CR>", opts)

-- Better terminal navigation
keymap("t", "<A-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<A-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<A-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<A-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<A-ESC>", "<C-\\><C-N>", term_opts)
keymap("t", "<C-A-d>", "<C-\\><C-N>:bdelete!<CR>", term_opts)

-- Resize in terminal mode
keymap("t", "<A-K>", "<C-\\><C-N>:resize +2<CR>a", opts)
keymap("t", "<A-J>", "<C-\\><C-N>:resize -2<CR>a", opts)
keymap("t", "<A-H>", "<C-\\><C-N>:vertical resize -2<CR>a", opts)
keymap("t", "<A-L>", "<C-\\><C-N>:vertical resize +2<CR>a", opts)

