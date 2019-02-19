set shiftwidth=2

set tabstop=2

set number

set autoindent

set cursorline

set conceallevel=0

set linebreak

set lazyredraw

syntax on
set background=dark

set foldmethod=diff

set autoread

"" Syntastic
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" NEEDTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
let g:NERDTreeWinPos = "left"

"" Use the silver seracher or ag
let g:ackprg='ag --vimgrep'
""VIM-JSX

""let g:jsx_ext_required = 0

""let g:xml_syntax_folding = 0

"vim-colors-solarized

"" Multicursor

" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

"" Move lines
let g:move_key_modifier = 'c-s'

" Indent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Git
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1

"" Auto Save
let g:auto_save = 0  " enable AutoSave on Vim startup
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
autocm BufWritePre * %s/\s\+$//e
set ff=unix

nmap <c-> %s/\r//g <cr>

nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <c-o><F2>

"" Paste config
set clipboard=unnamed
set pastetoggle=<F3>

"" Close tabs
nmap <c-s-z> :q<CR>
vmap <c-s-z> :q<CR>

"" VIM THEMS

""colorscheme solarized
colorscheme molokai
""colorscheme OceanicNext
""colorscheme jellybeans
""colorscheme dracula
""colorscheme solarized8
""colorscheme  hybrid_reverse

let g:molokai_original = 1
let g:rehash256 = 1

hi Normal ctermbg=none

"" No idea

let g:autoformat_autoindent = 1

let g:autoformat_retab = 1

let g:autoformat_remove_trailing_spaces = 1

let g:autoformat_verbosemode=1

let g:user_emmet_install_global = 0

let g:user_emmet_mode='a'

""NEOCOMPLETE

let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1

let g:neocomplete#enable_smart_case = 1

let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
""inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"" Go to next and previous tab
noremap <C-h> :tabp<cr>

noremap <C-l> :tabn<cr>

nmap <F8> :TagbarToggle<CR>

nmap <F4> :set invnumber<cr>

noremap <F12> :!bash<cr>

"" Move tabs

noremap <S-h>  :-tabmove<cr>

noremap <S-l> :+tabmove<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""" FRONTEND """"""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Emmet
""enabe all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"" Javascript
let g:javascript_plugin_jsdoc = 1

""Syntastic
let g:syntastic_html_checkers = []

"" CLose Tags
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
