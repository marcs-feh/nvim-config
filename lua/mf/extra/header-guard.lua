function HeaderGuard()
	local name = vim.api.nvim_buf_get_name(0)
	local cur_pos = vim.api.nvim_win_get_cursor(0)
	name = 'INCLUDE_' .. name:
		gsub('.*/', ''):
		gsub('%.', '_'):
		upper() .. '_'
	local cmds = {
		'normal ggO#ifndef '..name,
		'normal o#define '..name,
		'normal o',
		'normal Go',
		'normal o#endif /* header guard */',
	}
	for _, cmd in ipairs(cmds) do vim.cmd(cmd) end
	-- put cursor back
	vim.api.nvim_win_set_cursor(0, cur_pos)
end

