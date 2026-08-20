vim.lsp.enable "clangd" 
vim.lsp.enable "pyright" 
vim.lsp.enable "rust_analyzer" 
vim.lsp.enable "gopls" 
vim.lsp.enable "nixd" 
vim.lsp.enable "nimls" 

vim.lsp.config['hls'] = {
	settings = {
		haskell = {
			plugin = { hlint = { globalOn = false } }
		}
	}
}
vim.lsp.enable "hls" 

vim.lsp.config['tinymist'] = {
  settings = {
    typstExtraArgs = { "--features", "html" }
  }
}
vim.lsp.enable "tinymist" 

vim.diagnostic.config{ virtual_lines = { current_line = true } }
