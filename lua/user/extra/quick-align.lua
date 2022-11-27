-- Wrapper for quickly aligning selected lines of visual mode using mini.align
---If pattern is nil, it will be grabbed from user input.
---@param buf_num integer
---@param pattern? string
QuickAlign = function(buf_num, pattern)
	pattern = pattern or vim.fn.input('Pattern: ', '', 'buffer')
	local from = vim.api.nvim_buf_get_mark(buf_num, "<")[1]
	local to   = vim.api.nvim_buf_get_mark(buf_num, ">")[1]

	local lines = vim.api.nvim_buf_get_lines(buf_num, from - 1, to, true)
	local new_lines = MiniAlign.align_strings(lines,
		{ split_pattern = pattern, justify_side = {'left', 'right'} })

	vim.api.nvim_buf_set_lines(0, from - 1, to, true, new_lines)
end

