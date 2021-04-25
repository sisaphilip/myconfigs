"vim-plug config
call plug#begin()
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1


call plug#end()

" plugin config
let g:OmniSharp_server_stdio = 1


function SetCSSettings()

    " Use deoplete.
    call deoplete#enable()

    " Use smartcase.
    call deoplete#custom#option('smart_case', v:true)

    " Use OmniSharp-vim omnifunc 
    call deoplete#custom#source('omni', 'functions', { 'cs':  'OmniSharp#Complete' })

    " Set how Deoplete filters omnifunc output.
    call deoplete#custom#var('omni', 'input_patterns', {
        \ 'cs': '[^. *\t]\.\w*',
        \})

    " ... then goes your mappings for :OmniSharp* functions, see its doc
endfunction

augroup csharp_commands
    autocmd!

    " Use smartcase.
    " call deoplete#custom#option('smart_case', v:true) 
    autocmd FileType cs call SetCSSettings()

augroup END
