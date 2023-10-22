require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

require("ccls").setup({lsp = {use_defaults = true}})

require('tabnine').setup({
  disable_auto_comment=false,
  accept_keymap="<M-]>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

vim.cmd("let g:vimsence_small_text = 'NeoVim'\
let g:vimsence_small_image = 'neovim'\
let g:vimsence_editing_details = 'Editing: {}'\
let g:vimsence_editing_state = 'Working on: {}'\
let g:vimsence_file_explorer_text = 'In NERDTree'\
let g:vimsence_file_explorer_details = 'Looking for files'\
let g:vimsence_custom_icons = {'filetype': 'iconname'}\
")
