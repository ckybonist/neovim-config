local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

-- Mappings
local opts = { noremap=true, silent=true }

vim.api.nvim_set_keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>k', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.api.nvim_set_keymap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gr', '<Cmd>Lspsaga rename<CR>', opts)

