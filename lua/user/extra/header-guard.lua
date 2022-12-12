function HeaderGuard()
	local name = vim.api.nvim_buf_get_name(0)
	local cur_pos = vim.api.nvim_win_get_cursor(0)
	name = 'INCLUDE_' .. name:
		gsub('.*/', ''):
		gsub('%.', '_'):
		upper() .. '_'
	print(name)

	vim.cmd('normal ggO#ifndef '..name)
	vim.cmd('normal o#define '..name)
	vim.cmd('normal o')
	vim.cmd('normal Go')
	vim.cmd('normal o#endif /* header guard */')
	-- put cursor back
	vim.api.nvim_win_set_cursor(0, cur_pos)
end

