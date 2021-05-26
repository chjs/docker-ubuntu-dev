syntax enable

set autoindent
set cindent
set smartindent
set smarttab
set showcmd
set showmode
set visualbell

set number
highlight LineNr ctermfg=193

set laststatus=2
set statusline=\ %<%F%=%a\ %l:%v\ [%P]

set showmatch
highlight MatchParen cterm=bold ctermbg=none ctermfg=red

set hlsearch
highlight Search ctermfg=Red

set colorcolumn=81
highlight ColorColumn ctermbg=17

nnoremap <esc><esc> :noh<return>
