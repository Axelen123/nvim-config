if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  " Shougo
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deol.nvim')
  call dein#add('Shougo/defx.nvim')

  " uncomment once implemented
  " call dein#add('Shougo/deoppet.nvim')
  " remove when deoppet.nvim is implemented
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " deoplete
  call dein#add('deoplete-plugins/deoplete-go', {'build': 'make', 'on_ft': 'go'})
  call dein#add('deoplete-plugins/deoplete-jedi', {'on_ft': 'python'})
  call dein#add('deoplete-plugins/deoplete-clang')
  call dein#add('deoplete-plugins/deoplete-docker')
  call dein#add('deoplete-plugins/deoplete-zsh')
  
  " typescript
  call dein#add('HerringtonDarkholme/yats.vim', {'on_ft': ['typescript', 'svelte']})
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh', 'on_ft': ['typescript', 'svelte']})

  " scrooloose
  " commented bc defx
  " call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/syntastic')

  " tpope
  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-surround', {'on_map': {'n' : ['cs', 'ds', 'ys']}})
  
  " airline
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')


  " other
  call dein#add('rakr/vim-one')
  call dein#add('w0rp/ale')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('mattn/emmet-vim', {'on_ft': ['html', 'svelte']})
  call dein#add('sheerun/vim-polyglot')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})

filetype plugin indent on
syntax enable
colorscheme one
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype svelte setlocal ts=2 sts=2 sw=2

let g:deoplete#enable_at_startup = 1
let g:ruby_host_prog = 'rvm all do neovim-ruby-host'
let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
let g:ale_javascript_eslint_use_global = 0
let g:ale_typescript_eslint_use_global = 0
let b:ale_linter_aliases = {'svelte': ['javascript']}
let b:ale_linters = {'javascript': ['tsserver', 'eslint'], 'typescript': ['tsserver', 'eslint'], 'svelte': ['eslint'], 'go': ['gobuild', 'golint', 'gofmt'], 'python': 'pylint'}
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint'], 'svelte': ['prettier', 'eslint'], 'go': ['gofmt', 'gomod']}
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1