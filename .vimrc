" __  ____   ____     _____ __  __ ____   ____ 
"|  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  \ \ / / | || |\/| | |_) | |    
"| |  | | | |    \ V /  | || |  | |  _ <| |___ 
"|_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|


"==============================================
"=============== basic settting ===============
"==============================================

set nocompatible " 设置不与vi兼容 
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set ruler
syntax enable
syntax on
set notimeout

" 设置每次打开文件定位到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set number
set relativenumber
set cursorline
set showcmd
set wildmenu
set scrolloff=8

" Prevent incorrect backgroung rendering
let &t_ut=''

" Window behaviors
set splitright
set splitbelow

" Prevent auto line split
set wrap
set tw=0

"查找高亮 
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap <LEADER><CR> :nohlsearch<CR>

" batter Tab
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 括号补全(使用auto-paris代替)
""inoremap { {<CR>}<Up><Enter>
""inoremap ( ()<Left>
""inoremap < <><Left>
""inoremap [ []<Left>
""inoremap " ""<Left>
""inoremap ' ''<Left>


"=========================================
"============== universial-ctags =========
"=========================================
set tags=./.tags;,.tags
set autochdir



"       _               _                _       
" _ __ | |_   _  __ _  | |__   ___  __ _(_)_ __  
"| '_ \| | | | |/ _` | | '_ \ / _ \/ _` | | '_ \ 
"| |_) | | |_| | (_| | | |_) |  __/ (_| | | | | |
"| .__/|_|\__,_|\__, | |_.__/ \___|\__, |_|_| |_|
"|_|            |___/              |___/         
call plug#begin()
" ======================= airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ======================= vim colorschemes
Plug 'flazz/vim-colorschemes'

" ===============================Auto Complete
" Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'davidhalter/jedi-vim'


" ============================vim-snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" ===============================File navigation
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
  " file finder
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }


" =============================== catgs 相关  
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim' "Tlist标签列表插件


" ================================vim-cpp-enhanced-hightlight-master
Plug 'octol/vim-cpp-enhanced-highlight'

" =========================vim-visual-muti 多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


" =============================== debug
  Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-rust --enable-python'}

" ===============================Error checking
Plug 'w0rp/ale'

" ===================Undo Tree
Plug 'mbbill/undotree/'

" ==================auto-pairs
Plug 'jiangmiao/auto-pairs'

" ========================== vim-man
Plug 'vim-utils/vim-man'


" ===========================Other visual enhancement
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'itchyny/vim-cursorword'
"Plug 'tmhedberg/SimpylFold'

" ===================================Git
"Plug 'rhysd/conflict-marker.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-signify'
"Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" ============================HTML, CSS, JavaScript, PHP, JSON, etc.
"Plug 'elzr/vim-json'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
"Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
"Plug 'mattn/emmet-vim'

" ==========================Python
"Plug 'vim-scripts/indentpython.vim'
" Plug 'vim-python/python-syntax', { 'for' :['python', 'vim-plug'] }

" ======================Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'

" ======================= For general writing
"Plug 'reedes/vim-wordy'
"Plug 'ron89/thesaurus_query.vim'

" Bookmarks
Plug 'kshenoy/vim-signature'

"========== Other useful utilities=============
"Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
""Plug 'ntpeters/vim-better-whitespace', { 'on': ['EnableWhitespace', 'ToggleWhitespace'] } "displays trailing whitespace (after :EnableWhitespace, vim slows down)
""Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
""Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
""Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
""Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'kana/vim-textobj-user'
"Plug 'fadein/vim-FIGlet'


call plug#end()

colorscheme wombat256 

"                  __ _                       _   _
"  ___ ___  _ __  / _(_) __ _ _   _ _ __ __ _| |_(_) ___  _ __
" / __/ _ \| '_ \| |_| |/ _` | | | | '__/ _` | __| |/ _ \| '_ \
"| (_| (_) | | | |  _| | (_| | |_| | | | (_| | |_| | (_) | | | |
" \___\___/|_| |_|_| |_|\__, |\__,_|_|  \__,_|\__|_|\___/|_| |_|
"                       |___/

"=========================================
"============== coc.nvim =================
"=========================================
let g:coc_global_extensions=[
	\ 'coc-vimlsp',
	\ 'coc-clangd',
	\ 'coc-cmake',
	\ 'coc-json',
	\ 'coc-marketplace',
	\ 'coc-snippets'
	\]


" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=100

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Don't pass message to |ins-completioin-menu|.
set shortmess+=c

" merge signcolumn and number column into outline
set signcolumn=number

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-o> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" coc-snippets config
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)




"=========================================
"============== debug ====================
"=========================================
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

function! s:generate_vimspector_conf()
  if empty(glob( '.vimspector.json' ))
    if &filetype == 'c' || 'cpp' 
      !cp ~/Templates/config/vimspector_conf/c.json ./.vimspector.json
    elseif &filetype == 'python'
      !cp ~/Templates/config/vimspector_conf/python.json ./.vimspector.json
    endif
  endif
  e .vimspector.json
endfunction

command! -nargs=0 Gvimspector :call s:generate_vimspector_conf()

nmap <Leader>v <Plug>VimspectorBalloonEval
xmap <Leader>v <Plug>vimspectorBalloonEval

"=========================================
"============== alet =====================
"=========================================
let g:ale_sign_column_always = 1 
let g:ale_sign_error = '✗' 
let g:ale_sign_warning = '⚡ '
let g:ale_statusline_format = ['✗ %d', '⚡  %d','✔ OK']  



"=========================================
"==============nerdTree ==================
"=========================================
map nt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ========================================
" =========== leaderF ===================
" ========================================
" ==== Yggdroot/LeaderF ====
let g:Lf_WindowPosition='right'
let g:Lf_PreviewInPopup=1
let g:Lf_CommandMap = {
\   '<C-p>': ['<C-k>'],
\   '<C-k>': ['<C-p>'],
\   '<C-j>': ['<C-n>']
\}
nmap <leader>f :Leaderf file<CR>
nmap <leader>b :Leaderf! buffer<CR>
nmap <leader>F :Leaderf rg<CR>
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"


" ========================================
" =========== vim-gutentags ==============
" ========================================
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif


" ========================================
" ===========  taglist ===================
" ========================================
"Tlist插件配置
let Tlist_Show_One_File           = 1 " 只显示当前文件的tags
"let Tlist_Auto_Open			  = 1 " 打开vim自动打开Tlist
"let Tlist_GainFocus_On_ToggleOpen = 1 " 打开Tlist窗口时,光标跳到list窗口
let Tlist_Exit_OnlyWindow         = 1 " 如果Tlist窗口是最后一个窗口则退出Vim
let Tlist_Use_Left_Window         = 1 " 在左侧窗口中显示
let Tlist_File_Fold_Auto_Close    = 1 " 自动折叠
let Tlist_Auto_Update             = 1 " 自动更新
" <F4> 打开 Tlist 窗口，在左侧栏显示
map <F4> :TlistToggle<CR>




" ========================================
" =========== vim-table-mode =============
" ========================================
map <LEADER>tm :TableModeToggle<CR>



" ========================================
" =========== Goyo =======================
" ========================================
map <LEADER>gy :Goyo<CR>


" ========================================
" =========== vim-man ====================
" ========================================
 nmap m :Man <C-R>=expand("<cword>")<CR><CR>
 nmap vm :Vman <C-R>=expand("<cword>")<CR><CR>

