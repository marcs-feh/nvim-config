function ListLspClients()
	print(('%2s|%14s|%8s'):format('id', 'client', 'enabled'))
	for id, client in ipairs(vim.lsp.get_active_clients()) do
		print(('%2d|%14s|%8s'):format(id, client.name, not client:is_stopped()))
	end
end

local function fmtSeverity(severity)
	if     severity == 1 then
		return 'E'
	elseif severity == 2 then
		return 'W'
	elseif severity == 3 then
		return 'I'
	elseif severity == 4 then
		return '?'
	end
end

function ShowBufferLspDiagnostics(bufnum)
	local diagnostics = vim.diagnostic.get(bufnum)
	local bufname = vim.api.nvim_buf_get_name(bufnum)
	local msg = bufname .. ':\n'
	for _, diag in ipairs(diagnostics) do
		msg = msg .. ('%s %4d: %s\n'):format(fmtSeverity(diag.severity), diag.lnum, diag.message)
	end
	print(msg)
end

function ShowLspDiagnostics()
	for _, buf in pairs(vim.fn.getbufinfo()) do
		if buf.listed == 1 then
			ShowBufferLspDiagnostics(buf.bufnr)
		end
	end
end

