" pathogen
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

" nerdtree
map <leader>e :NERDTreeToggle<CR>

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map ; :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/env/*,*.so,*.swp,*.zip,*.pyc,*/node_modules/*,*/rest_framework/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/]\(tmp|env|node_modules|rest_framework)$'
"let g:ctrlp_custom_ignore = {
    "'dir':  '\v[\/]\.(git|hg|svn|tmp|env|node_modules|rest_framework)$',
    "'file': '\v\.(exe|so|dll|so|swp|zip|pyc)$',
"}
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" powerline
set rtp+=/usr/local/lib/python3.8/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" python mode
let g:pymode = 1
let g:pymode_lint = 0
let g:pymode_rope = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ra'
let g:pymode_breakpoint_bind = '<leader>b'

set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nofoldenable
set noswapfile

func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()
