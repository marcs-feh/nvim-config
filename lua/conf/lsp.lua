local LSP = require 'lspconfig'

local available_servers = {
	['sumneko_lua'] = true, -- Lua
	['clangd']      = true, -- C/C++
	['gopls']       = true, -- Go
	['bashls']      = true, -- Bash, sh
	['pyright']     = true, -- Python

}

local server_configs = {
	-- Lua
	['sumneko_lua'] = {
		settings = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		}
	},
}

-- Setup servers
for server, enabled in pairs(available_servers) do
	if enabled then
		-- If there's no config for that server just use an empty table
		local cfg = server_configs[server] or {}
		LSP[server].setup(cfg)
	end
end

