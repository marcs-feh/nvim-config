--- Language/FileType specific options ---

-- Just to 2 spaces for python indenting
vim.g.python_recommended_style = 0

-- Use spaces instead of tab for certain languages
vim.cmd [[autocmd FileType markdown,scheme,org,python,nim setlocal expandtab]]

-- Rust recommended style is bad
vim.cmd [[autocmd FileType rust set noexpandtab shiftwidth=2 tabstop=2]]

-- Standard ML helper for writing comments with '??'
vim.cmd [[autocmd FileType sml inoremap ?? (* *)<ESC>hhi ]]

-- Recognize Odin files
vim.cmd [[autocmd BufNewFile,Bufread *.odin set filetype=odin]]

