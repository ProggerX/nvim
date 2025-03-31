local lsp = require('lspconfig')
lsp.clangd.setup {}
lsp.rust_analyzer.setup {}
lsp.pyright.setup {}
lsp.gopls.setup { settings = { gopls = { hints = { compositeLiteralFields = true, parameterNames = true } } } }
lsp.nixd.setup {}
lsp.marksman.setup {}
