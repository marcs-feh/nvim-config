local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Save
keymap("n", "<C-s>", ":w<CR>", opts)

-- Open file to edit
keymap("n", "<leader>o", ":Telescope find_files<CR>", opts)

-- Open buffers
keymap("n", "<leader>e", ":Telescope buffers<CR>", opts)

-- Clear search highlight
keymap("n", "<leader>l", ":noh<CR>", opts)

-- Clear trailing whitespace
keymap("n", "<leader>W", ":%s/\\s\\+$//<CR>", opts)

-- Select all
keymap("n", "<C-a>", ":normal ggVG<CR>", opts)

-- Open config for editing
keymap("n", "<C-A-c>", ":e ~/.config/nvim/<CR>", opts)

-- Folding
--- Close
keymap("n", "<leader>f", ":foldclose<CR>", opts)
--- Open All
keymap("n", "<leader>F", ":folddoclose foldopen<CR>", opts)
--- Close All
--keymap("n", "<leader><C-f>", ":folddoopen foldclose<CR>", opts)

-- Show current buffers
keymap("n", "<leader>b", ":buffers<CR>", opts)

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
keymap("n", "<leader>X", ":bdelete!<CR>", opts)

-- Resize windows
keymap("n", "<C-A-k>", ":resize +2<CR>", opts)
keymap("n", "<C-A-j>", ":resize -2<CR>", opts)
keymap("n", "<C-A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-A-l>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<C-j>", ":m .+1<CR>==", opts)
keymap("n", "<C-k>", ":m .-2<CR>==", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

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
keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<C-S-K>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>af", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts)
-- List clients
keymap("n", "<leader>Q", ":lua Lsp_utils.list_clients()<CR>", opts)
-- Stop LSP
keymap("n", "<leader>S", ":LspStop<CR>", opts)

-- Insert --
-- nothing :P

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--i have tree procs

-- Move text up and down
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Open/Close Terminal
local term_height = 8
local term_width = 36

keymap("n", "<leader>`", ":split<CR>:resize "..term_height.."<CR>:set nonumber<CR>:set signcolumn=no<CR>:terminal<CR>a", opts)
keymap("n", "<leader>t", ":vsplit<CR>:vertical resize "..term_width.."<CR>:set nonumber<CR>:set signcolumn=no<CR>:terminal<CR>a", opts)

-- Better terminal navigation
keymap("t", "<A-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<A-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<A-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<A-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<A-c>", "<C-\\><C-N>:close<CR>", term_opts)
keymap("t", "<A-q>", "<C-\\><C-N>:bdelete!<CR>", term_opts)
-- Resize in terminal mode
keymap("t", "<C-A-k>", "<C-\\><C-N>:resize +2<CR>a", opts)
keymap("t", "<C-A-j>", "<C-\\><C-N>:resize -2<CR>a", opts)
keymap("t", "<C-A-h>", "<C-\\><C-N>:vertical resize -2<CR>a", opts)
keymap("t", "<C-A-l>", "<C-\\><C-N>:vertical resize +2<CR>a", opts)

