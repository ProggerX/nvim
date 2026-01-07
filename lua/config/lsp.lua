vim.lsp.enable "clangd" 
vim.lsp.enable "pyright" 
vim.lsp.enable "rust-analyzer" 
vim.lsp.enable "tinymist" 
vim.lsp.enable "gopls" 
vim.lsp.enable "nixd" 

vim.lsp.config['hls'] = {
	settings = {
		haskell = {
			plugin = { hlint = { globalOn = false } }
		}
	}
}
vim.lsp.enable "hls" 

vim.diagnostic.config{ virtual_lines = { current_line = true } }
