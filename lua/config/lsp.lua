local lsp = require('lspconfig')
lsp.clangd.setup {}
lsp.tinymist.setup {
	root_dir = function()
		return vim.fn.getcwd()
    end,
    offset_encoding = "utf-8",
	
}
lsp.rust_analyzer.setup {}
lsp.pyright.setup {}
lsp.gopls.setup { settings = { gopls = { hints = { compositeLiteralFields = true, parameterNames = true } } } }
lsp.texlab.setup {}
lsp.nixd.setup {}
-- lsp.hls.setup{}
lsp.arduino_language_server.setup {}
lsp.marksman.setup {}
lsp.zls.setup {}
