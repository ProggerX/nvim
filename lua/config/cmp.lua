require("luasnip.loaders.from_vscode").lazy_load()

require('blink.cmp').setup({
	appearance = {
		nerd_font_variant = 'mono'
	},
	completion = {
		documentation = { auto_show = true },
		list = { selection = { preselect = false } },
	},
	sources = {
		default = { 'snippets', 'lsp', 'path', 'buffer' },
	},
	snippets = { preset = 'luasnip' },
	fuzzy = { implementation = "lua" },
	keymap = {
		preset = 'none',

		['<C-j>'] = { 'snippet_forward', 'fallback' },
		['<C-k>'] = { 'snippet_backward', 'fallback' },
		['<M-CR>'] = { 'accept' },
		['<S-Tab>'] = { 'select_prev', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
	}
})
