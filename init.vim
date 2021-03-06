let g:config_files = ['globals.vim',
  \ 'options.vim',
  \ 'autocommands.vim',
  \ 'mappings.vim',
  \ 'plugins.vim',
  \ 'ui.vim'
  \]

let g:nvim_config_root = expand('<sfile>:p:h')

for s:fname in g:config_files
  execute printf('source %s/core/%s', g:nvim_config_root, s:fname)
endfor

