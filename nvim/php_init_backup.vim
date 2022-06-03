"-------------Main--------------"
let mapleader = ","
let g:mapleader = ","
set autoindent
set cindent
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

set showtabline=2               " setting tabline display 'always'
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                   " a tab is two spaces
set smarttab
set tags=tags
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set relativenumber              " set relative number
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set guifont=Fira\ Code:h12
set guioptions-=e 
syntax enable
highlight clear SignColumn

set nosmd   " short for 'showmode'
"set noru    " short for 'ruler'

" Enable filetype
filetype on
filetype plugin on
filetype indent on


"-------------Theme--------------"
" colorscheme nord
" set background=dark
" colorscheme oceanic_material
" let g:jellybeans_overrides = {
            " \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
            " \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
            " \              'attr': 'bold' },
            " \}
" let g:jellybeans_use_lowcolor_black = 0
let g:prettier#config#trailing_comma = 'none'

" set tags=~/.ctags

"Add simple highlight removal.
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_quit_key='<Esc>'

"-------------Linter--------------"
let g:ale_sign_column_always = 1

"-------------Split Management--------------"
set splitbelow                              "Make splits default to below...
set splitright                              "And to the right. This feels more natural.

"-------------Search--------------"
set hlsearch
set incsearch
"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
" Both Q and q will be able to quit
command! Q q
" Both Q and q will be able to quit
nmap <Leader>e :tabedit 
" Get relative path of folder
nmap <Leader>ef :tabedit %:h
" Source .vimrc
nmap <Leader>sc :so $MYVIMRC<cr>
" Refactor selected lines to new function
vmap mre "tdGofunction name() {<cr>}<esc>k"tp<esc>kw
" Convert php object value to string value
nmap mw df>i['<esc>ea']<esc>  
nmap me d2li-><esc>eld2l

" Edit .vimrc
nmap mev :tabedit $MYVIMRC<cr>
nmap <Leader>ev :tabedit ~/.vim_rc/
nmap <Leader>es :tabedit ~/.vim/snippets/php.snippets<cr>
" Open todo file from root directory
nmap mt :tabedit ~/todo<cr>

" find function
nmap <Leader>ff /function 

nmap zj :CtrlP<cr>.ts<Left><Left><Left>
nmap zh :CtrlP<cr>.html<Left><Left><Left><Left><Left><Left>

"-------------CSS--------------"
" Adds important
nmap zi f;i !important<esc>

nmap <Leader>a 0w

nmap <Leader>s :w<cr>
nmap <Leader>b :buffers<cr>
" nmap <Leader><Leader>d :bd<cr>
" imap <C-a> <Esc>A
nmap <Leader>1 :tabn 1<cr>
nmap <Leader>2 :tabn 2<cr>
nmap <Leader>3 :tabn 3<cr>
nmap <Leader>4 :tabn 4<cr>
nmap <Leader>5 :tabn 5<cr>
nmap <Leader>6 :tabn 6<cr>
nmap <Leader>7 :tabn 7<cr>
nmap <Leader>8 :tabn 8<cr>
nmap <Leader>9 :tabn 9<cr>
nmap <Leader>0 :tablast<cr>
nmap <Leader>w :bd<cr>
nmap <Leader>= :tabnew<cr>

nmap <Leader>qq :q<cr>


"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <Leader>t :!phpunit %<cr>
nmap <Leader>f :set fu<cr>
nmap <Leader>g :set nofu<cr>
nmap <C-p> :CtrlP<cr>
nmap <C-t> :CtrlPBufTag<cr>
nmap zn :NERDTreeToggle<cr>
nmap zn :NERDTreeToggle<cr>
nmap ff :Files<cr>

nmap <Leader><space> :nohlsearch<cr>

"----Laravel Specific----"
nmap <Leader><Leader>l :tabedit storage/logs/laravel.log<cr>
nmap <Leader><Leader>e :tabedit .env<cr>

nmap <Leader>l1 :tabedit routes/api.php<cr>
map <Leader>c :.w !pbcopy<CR><CR>
map <Leader>v :r !pbpaste<CR>

"-------------Plugins--------------"
" so ~/.vim_rc/vim/plugins.vim
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-multiple-cursors'          " Multiple cursors like sublime

Plug 'tpope/vim-vinegar'                     " Project Folder drawer
Plug 'scrooloose/nerdcommenter'              " For commenting
Plug 'terryma/vim-multiple-cursors'          " Multiple cursors like sublime
Plug 'tpope/vim-surround'
Plug 'jwalton512/vim-blade'                  " Blade highlightings
Plug 'takac/vim-hardtime'                    " Enable vim hard mode
Plug 'christoomey/vim-system-copy'           " System copy
Plug 'itchyny/lightline.vim'

Plug 'maximbaz/lightline-ale'                " Status bar at bottom 
Plug 'miyakogi/seiya.vim'                    " For transparent backkground
Plug 'joshdick/onedark.vim'                  " One Dark theme

Plug 'glepnir/oceanic-material'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
" Plug 'airblade/vim-gitgutter'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif


Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'josa42/vim-lightline-coc'
Plug 'mhartington/oceanic-next'
call plug#end()

" set background=dark
colorscheme onedark

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext


nmap <C-p> :call fzf#run({'source': 'git ls-files --exclude-standard --others --cached', 'sink': 'tabedit', 'window':  {'width': 0.9, 'height': 0.6}})<enter>
nmap ff :call fzf#run({'source': 'git ls-files --exclude-standard --others --cached', 'sink': 'tabedit', 'window':  {'width': 0.9, 'height': 0.6}})<enter>

nmap <space>t :tabnew<enter>

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'


nmap <C-t> :Ag<cr>

autocmd FileType javascript setlocal ts=4 sts=4 sw=4
autocmd FileType jade setlocal ts=4 sts=4 sw=4

imap <C-Space> <c-p>


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

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



"/
"/ Lightline (status bar)
"/

let g:lightline = {}
let g:lightline.colorscheme = 'oceanicnext'

let g:lightline.active = { 'right': [
      \  [ 'linter_errors', 'linter_warnings', 'linter_ok' ],
      \  [ 'lineinfo' ],
      \  [ 'percent' ],
      \  [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]
      \  ]}

let g:lightline.active.left = [
      \ [ 'mode', 'paste' ],
      \ [ 'gitbranch', 'readonly', 'filename', 'modified' ] 
      \ ]

" plugin for showing branch
let g:lightline.component_function = {
      \   'gitbranch': 'gitbranch#name'
      \ }


let g:lightline.component_expand = {
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'success',
      \ }

let g:lightline.active.left = [
      \ [ 'mode', 'paste' ],
      \ [ 'gitbranch', 'readonly', 'filename', 'modified' ],
      \ [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ], [ 'coc_status'  ]
      \ ]

call lightline#coc#register()
