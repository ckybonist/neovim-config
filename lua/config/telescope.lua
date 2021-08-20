-- nvim-telescope
require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      '%.png',
      '%.jpg',
      '%.jpeg',
      '%.svg',
      '%.gif',
      '%.heic',
      '%.webp'
    }
  }
}

-- Mappings
local compe_map_opts = {noremap = true, silent = true}

function cmd_str(cmd)
  return string.gsub(
    [[<cmd>lua require('telescope.builtin').$cmd(require('telescope.themes').get_dropdown({}))<cr>]],
    '$cmd',
    cmd
  )
end

vim.api.nvim_set_keymap('n', '<leader>ff', cmd_str('find_files'), compe_map_opts)
vim.api.nvim_set_keymap('n', '<leader>fg', cmd_str('live_grep'), compe_map_opts)
vim.api.nvim_set_keymap('n', '<leader>fb', cmd_str('buffers'), compe_map_opts)
vim.api.nvim_set_keymap('n', '<leader>fh', cmd_str('help_tags'), compe_map_opts)

