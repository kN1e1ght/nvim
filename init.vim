set ignorecase
set smartcase
set number
set relativenumber
set scrolloff=5

let mapleader = ' '
map J 5j
map K 5k
"split
noremap s <nop>
noremap sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sh :set splitright<CR>:vsplit<CR>

noremap <LEADER>h <c-w>h
noremap <LEADER>j <c-w>j
noremap <LEADER>k <c-w>k
noremap <LEADER>l <c-w>l


noremap <left>   :vertical resize-5<CR>
noremap <up>     :res +5<CR>
noremap <down>   :res -5<CR>
noremap <right>  :vertical resize+5<CR>

noremap tu :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>



nnoremap <c-h> 0
nnoremap <c-l> $
call plug#begin(stdpath('data') . '/plugged')


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'theniceboy/nvim-deus'
call plug#end()

"dress neovim
set termguicolors
color deus

nnoremap W :w<CR>
nnoremap Q :q<CR>


"====coc.nvim


let g:coc_global_extension = [
			\"coc-json",
			\"coc-pyright",
			\"coc-rust-analyzer",
			\"coc-vimlsp",
			\"coc-explorer"]
" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-j> to trigger completion.
inoremap <silent><expr> <c-j> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" " format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		      execute 'h '.expand('<cword>')
		        elseif (coc#rpc#ready())
				    call CocActionAsync('doHover')
				      else
					          execute '!' . &keywordprg . " " . expand('<cword>')
						    endif
					    endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)


"airline themes
let g:airline_theme='fruit_punch'

"coc-explorer
nnoremap <space>e :CocCommand explorer<CR>
