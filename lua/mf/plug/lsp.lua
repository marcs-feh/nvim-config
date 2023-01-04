--- LSP configuration ---

local M = {}
local LSP = require 'lspconfig'

M.available_servers = {
	-- server name   enabled?
	['sumneko_lua'] = true, -- Lua
	['clangd']      = true, -- C/C++
	['gopls']       = true, -- Go
	['bashls']      = true, -- Bash, sh
	['pyright']     = true, -- Python
	['emmet_ls']    = true, -- HTML/CSS
	['odin']        = true, -- Odin
	-- Use :help lspconfig-all to learn more about other servers
}

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

--- Server specific configuration
M.server_configs = {
	-- Lua
	['sumneko_lua'] = {
		settings = {
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'},
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		}
	},
}

-- Setup servers
function M.setup_servers()
	for server, enabled in pairs(M.available_servers) do
		if enabled then
			-- If there's no config for that server just use an empty table
			local cfg = M.server_configs[server] or {}
			cfg.capabilities = capabilities
			LSP[server].setup(cfg)
		end
	end
end

-- Return server list for other modules to use
return M

