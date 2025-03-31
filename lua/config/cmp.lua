require('blink.cmp').setup({
	appearance = {
		nerd_font_variant = 'mono'
	},
	completion = {
		documentation = { auto_show = true },
		list = { selection = { preselect = false } },
	},
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
	fuzzy = { implementation = "lua" },
	keymap = {
		preset = 'default',

		['<C-j>'] = { 'snippet_forward', 'fallback' },
		['<C-k>'] = { 'snippet_backward', 'fallback' },
		['<M-CR>'] = { 'accept' },
		['<S-Tab>'] = { 'select_prev', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
	}
})
