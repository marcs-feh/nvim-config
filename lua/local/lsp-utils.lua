Lsp_utils = {}

function Lsp_utils.list_clients()
	print(('%2s|%14s|%8s'):format('id', 'client', 'enabled'))
	for id, client in ipairs(vim.lsp.get_active_clients()) do
		print(('%2d|%14s|%8s'):format(id, client.name, not client:is_stopped()))
	end
end

