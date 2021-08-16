require'nvim-treesitter.configs'.setup {
  ensure_installed = {'lua', 'ruby', 'javascript', 'html', 'css', 'scss', 'json'},
  ignore_install = {},  -- List of parsers to ignore installing
  highlight = {
    enable = true,  -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}

