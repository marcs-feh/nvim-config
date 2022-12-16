function ListLspClients()
	print(('%2s|%14s|%8s'):format('id', 'client', 'enabled'))
	for id, client in ipairs(vim.lsp.get_active_clients()) do
		print(('%2d|%14s|%8s'):format(id, client.name, not client:is_stopped()))
	end
end

function ShowLspDiagnostics()
	local diagnostics = vim.diagnostic.get(0)
	for _, diag in ipairs(diagnostics) do
		print('['..diag.lnum.. '] ' .. diag.message)
	end
end
