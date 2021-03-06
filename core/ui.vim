" true color
if exists("&termguicolors") && exists("&winblend")
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark

  colorscheme gruvbox
endif


" Don't redraw while executing macros (good performance config)
set lazyredraw

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey30

" Set transparent background
"highlight Normal guibg=none
