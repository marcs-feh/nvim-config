local cmp = require 'cmp'

local has_words_before = function()
	local cur = vim.api.nvim_win_get_cursor(0)
	local line, col = cur[1], cur[2]
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
		vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
		-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	completion = {
		autocomplete = false,
	},
	mapping = cmp.mapping.preset.insert {
		['<C-j>'] = cmp.mapping.scroll_docs(-4),
		['<C-k>'] = cmp.mapping.scroll_docs(4),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<C-f>'] = cmp.mapping(function()
			if vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			else
				cmp.complete()
			end
		end),
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, {'i'}),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, {'i', 's'}),
	},
	sources = cmp.config.sources(
		{ { name = 'nvim_lsp' }, },
		{ { name = 'buffer' }, } ,
		{ { name = 'orgmode' }, }
	)
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

