--- Language/FileType specific options ---

-- 2 spaces for python indenting
vim.g.python_recommended_style = 0

-- Use spaces instead of tab for certain languages
vim.cmd [[autocmd FileType markdown,org,python setlocal expandtab]]

-- Rust indentation style is objectively inferior, tabs are better.
vim.cmd [[autocmd FileType rust set noexpandtab shiftwidth=2 tabstop=2]]

-- Standard ML helper for writing comments with '??'
vim.cmd [[autocmd FileType sml inoremap ?? (* *)<ESC>hhi ]]

