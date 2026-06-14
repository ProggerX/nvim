-- Highlight: enable treesitter for all buffers that have a parser
vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
