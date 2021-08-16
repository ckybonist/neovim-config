-- nvim-telescope
local compe_map_opts = {noremap = true, silent = true}

function cmd_str(cmd)
  return string.gsub([[<cmd>lua require('telescope.builtin').$cmd()<cr>]], '$cmd', cmd)
end

vim.api.nvim_set_keymap('n', '<leader>ff', cmd_str('find_files'), compe_map_opts)
vim.api.nvim_set_keymap('n', '<leader>fg', cmd_str('live_grep'), compe_map_opts)
vim.api.nvim_set_keymap('n', '<leader>fb', cmd_str('buffers'), compe_map_opts)
vim.api.nvim_set_keymap('n', '<leader>fh', cmd_str('help_tags'), compe_map_opts)

