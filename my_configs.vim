set shiftwidth=2

set tabstop=2

set number

set autoindent

set cursorline

set conceallevel=0

set linebreak

set lazyredraw

syntax on

set foldmethod=diff

""VIM-JSX

""let g:jsx_ext_required = 0

""let g:xml_syntax_folding = 0

""vim-colors-solarized

syntax enable

set background=dark

"" Move lines
noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv 

"" Auto Save
let g:auto_save = 1  " enable AutoSave on Vim startup

""colorscheme solarized

colorscheme molokai

let g:molokai_original = 1

let g:rehash256 = 1

hi Normal ctermbg=none

let g:autoformat_autoindent = 1

let g:autoformat_retab = 1

let g:autoformat_remove_trailing_spaces = 1

let g:autoformat_verbosemode=1

let g:user_emmet_install_global = 0 

let g:user_emmet_mode='a'    

""enabe all function in all mode.

autocmd FileType html,css EmmetInstall

let g:html5_event_handler_attributes_complete = 1

""NEOCOMPLETE

let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1

let g:neocomplete#enable_smart_case = 1

let g:neocomplete#sources#syntax#min_keyword_length = 3

autocmd FileType javascript vnorema <buffe_ttributes_complete = 0>  <c-a> :call RangeJsBeautify()<cr>

autocmd FileType json vnoremap <buffer> <c-a> :call RangeJsonBeautify()<cr>

autocmd FileType jsx vnoremap <buffer> <c-a> :call RangeJsxBeautify()<cr>

autocmd FileType html vnoremap <buffer> <c-a> :call RangeHtmlBeautify()<cr>

autocmd FileType css vnoremap <buffer> <c-a> :call RangeCSSBeautify()<cr>

""et g:clang_format#style_options = {
""
""           \ "AccessModifierOffset" : -4,
""
""           \ "AllowShortIfStatementsOnASingleLine" : "true",
""
""           \ "AlwaysBreakTemplateDeclarations" : "true",
""
""           \ "Standard" : "C++11"}
""
autocmd FileType c ClangFormatAutoEnable

set omnifunc=htmlcomplete#CompleteTags

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

let g:html5_event_handler_attributes_complete = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

let g:closetag_html_style=1

noremap <C-Left> :tabp<cr>

noremap <C-Right> :tabn<cr>

noremap <C-J> :call JsBeautify()<cr>

noremap <C-H> :call RangeHtmlBeautify()<cr>

noremap <C-X> :call RangeJsxBeautify()<cr>

noremap <C-C> :call RangeCSSBeautify()<cr>

nmap <F8> :TagbarToggle<CR>

nmap <F4> :set invnumber<cr>

noremap <F12> :!bash<cr>

noremap <A-Left>  :-tabmove<cr>

noremap <A-Right> :+tabmove<cr>

""let g:python_pep8_indent_multiline_string = 1

""let g:pymode_indent = 0

""let g:indentLine_color_term = 239

""let g:mta_use_matchparen_group = 1

""let g:typescript_compiler_binary = 'tsc'

""autocmd FileType typescript :set makeprg=tsc

""f exists('b:current_syntax')
""
""     let s:current_syntax=b:current_syntax
""
""       unlet b:current_syntax
""
""   endif
""
""   runtime! syntax/css.vim
""
""   ""syn include @htmlCss ~/.vim/bundle/vim-css3-syntax/after/syntax/html.vim
""
""   syntax cluster CSS
""
""               \ contains=cssAnimation,cssAnimationAttr,cssAnimationProp,cssAttr,
""
""               \          cssAttrComma,cssAttributeSelector,cssAuralAttr,
""
""               \          cssAuralProp,cssBackgroundAttr,cssBackgroundProp,
""
""               \          cssBorderAttr,cssBorderProp,cssBoxAttr,cssBoxProp,cssBraces,
""
""               \          cssClassName,cssClassNameDot,cssColor,cssColorProp,cssComma,
""
""               \          cssComment,cssCommonAttr,cssContentForPagedMediaAttr,
""
""               \          cssContentForPagedMediaProp,cssDefinition,cssDeprecated,
""
""               \          cssDimensionAttr,cssDimensionProp,cssError,
""
""               \          cssFlexibleBoxAttr,cssFlexibleBoxProp,cssFontAttr,
""
""               \          cssFontDescriptor,cssFontDescriptorAttr,
""
""               \          cssFontDescriptorBlock,cssFontDescriptorFunction,
""
""               \          cssFontDescriptorProp,cssFontProp,cssFunction,
""
""               \          cssFunctionComma,cssFunctionName,cssGeneratedContentAttr,
""
""               \          cssGeneratedContentProp,cssGradientAttr,cssGridAttr,
""
""               \          cssGridProp,cssHacks,cssHyerlinkAttr,cssHyerlinkProp,
""
""               \          cssIEUIAttr,cssIEUIProp,cssIdentifier,cssImportant,
""
""               \          cssInclude,cssIncludeKeyword,cssKeyFrame,
""
""               \          cssKeyFrameSelector,cssKeyFrameWrap,cssLineboxAttr,
""
""               \          cssLineboxProp,cssListAttr,cssListProp,cssMarginAttr,
""
""               \          cssMarqueeAttr,cssMarqueeProp,cssMedia,cssMediaAttr,
""
""               \          cssMediaBlock,cssMediaComma,cssMediaKeyword,cssMediaProp,
""
""               \          cssMediaType,cssMobileTextProp,cssMultiColumnAttr,
""
""               \          cssMultiColumnProp,cssNoise,cssPaddingAttr,cssPage,
""
""               \          cssPageMargin,cssPageProp,cssPagePseudo,cssPageWrap,
""
""               \          cssPagedMediaAttr,cssPagedMediaProp,cssPositioningAttr,
""
""               \          cssPositioningProp,cssPrintAttr,cssPrintProp,cssProp,
""
""               \          cssPseudoClass,cssPseudoClassFn,cssPseudoClassId,
""
""               \          cssPseudoClassLang,cssRenderAttr,cssRenderProp,cssRubyAttr,
""
""               \          cssRubyProp,cssSelectorOp,cssSelectorOp2,cssSpecialCharQ,
""
""               \          cssSpecialCharQQ,cssSpeechAttr,cssSpeechProp,cssStringQ,
""
""               \          cssStringQQ,cssTableAttr,cssTableProp,cssTagName,
""
""               \          cssTextAttr,cssTextProp,cssTransformAttr,cssTransformProp,
""
""               \          cssTransitionAttr,cssTransitionProp,cssUIAttr,cssUIProp,
""
""               \          cssURL,cssUnicodeEscape,cssUnicodeRange,cssUnitDecorators,
""
""               \          cssValueAngle,cssValueFrequency,cssValueInteger,
""
""               \          cssValueLength,cssValueNumber,cssValueTime,cssVend,
""
""               \          cssAttrRegion
""
""syn region styledJsxTag start=/<style.*jsx.*>/ keepend end=+</style>+ containedin=jsxRegion contains=@XMLSyntax

""syn region styledJsxTemplateString start=+`+ keepend contained containedin=styledJsxTag contains=@htmlCss,@CSS end=+`+

""Auto-format on save

"group fmt
"
"    autocmd!
"
"      autocmd BufWritePre *.js,*.jsx Neoformat prettier
"
"  augroup END
"
"  augroup myvimrc
"
"          au!
"
"              au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
"
"                augroup END
"
"                let g:syntastic_javascript_checkers = ['eslint']
"
"                if exists('s:current_syntax')
"
"                      runtime! syntax/xml.vim
"
"                        let b:current_syntax=s:current_syntax
"
"                    endif
"
"