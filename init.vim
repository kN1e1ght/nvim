set ignorecase
set smartcase
set number
set relativenumber
set scrolloff=5
" ===
" === airline theme
" ===

let g:airline_theme='fruit_punch'
" ===
" === os ditect
" ===


let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

" ===
" === custom keyboard mapping
" ===

let mapleader = ' '
map J 5j
map K 5k
map H 5h
map L 5l
map W 5w
map B 5b
nnoremap S :w<CR>
nnoremap Q :q<CR>

" ===
" === split
" ===

noremap s <nop>
noremap sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sh :set splitright<CR>:vsplit<CR>
"noremap sw exec ":w !sudo tee %<CR>"

noremap <LEADER>h <c-w>h
noremap <LEADER>j <c-w>j
noremap <LEADER>k <c-w>k
noremap <LEADER>l <c-w>l
noremap <LEADER>u <c-o>
noremap <LEADER>i <c-i>

set clipboard+=unnamedplus
noremap <left>   :vertical resize-5<CR>
noremap <up>     :res +5<CR>
noremap <down>   :res -5<CR>
noremap <right>  :vertical resize+5<CR>

noremap tj :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" ===
" === Personal add
" ===

noremap <LEADER>af :r !figlet 
inoremap <c-d> <esc>f"a
inoremap <c-a> <esc>A



" ===
" === Compile Func
" ===

noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'rust'
		set splitbelow
		:sp
		:term cargo run
	endif
endfunc
" ===
" === Vim plug
" ===

call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'

Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'vimwiki/vimwiki'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'theniceboy/nvim-deus'
call plug#end()

" ===
" === vim instant markdown
" ===

"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 1
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_browser = "chromium --new-window"
"let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" ===
" === minimap
" ===


hi MinimapCurrentLine ctermfg=Green guifg=#50FA7B guibg=#32302f
let g:minimap_highlight = 'MinimapCurrentLine'

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1
let g:minimap_highlight_range = 1
" ===
" === dress up 
" ===

set termguicolors
color deus

" ===
" === vim wiki
" ===


let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ===
" === coc-nvim
" ===


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"add this file type snippets
nnoremap <leader>s :CocCommand snippets.editSnippets<cr>
"show up marketplace
nnoremap <leader>m :CocList marketplace<cr>
"===
" === coc-explorer
" ===
nnoremap <space>e :CocCommand explorer<CR>
" ===
" === coc-yank
" ===

nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
" ===
" === coc-translator
" ===
nnoremap <space>t :CocCommand translator.popup<cr>
" ===
" === coc Global
" ===


let g:snips_author = "iujakchu"
let g:coc_global_extensions = [
			\"coc-json",
			\"coc-translator",
			\"coc-actions",
			\"coc-pyright",
			\"coc-rust-analyzer",
			\"coc-vimlsp",
			\"coc-marketplace",
			\"coc-tsserver",
			\"coc-explorer",
			\"coc-snippets",
			\"coc-toml",
			\"coc-clangd",
			\"coc-yank"]

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

autocmd CursorHold * silent call CocActionAsync('highlight')
" Manage extensions.
nnoremap <silent><nowait> ex  :<C-u>CocList extensions<cr>

" ===
" === coc-snippets
" ===


" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'




" ===
" === nvim config path (OS specific)
" ===

if(g:islinux)
	noremap <LEADER><LEADER> :e ~/.config/nvim/init.vim<CR>
	let g:python3_host_prog = '/usr/bin/python'
else
	noremap <leader><leader> :e ~/AppData/Local/nvim/init.vim<CR>
	let g:python3_host_prog = 'C://Python310/python.exe'
	hi Normal guibg=NONE ctermbg=NONE
endif
