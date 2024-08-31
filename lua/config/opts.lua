vim.opt.showmode = false

vim.opt.wrap = false

vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.rs" }, command = 'lua vim.lsp.buf.format()' })
vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.go" }, command = 'lua require("go.format").goimports()' })
