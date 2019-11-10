"Vundle{{{1
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim 
    call vundle#begin('$VIM/vimfiles/bundle/')
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    " Bundle 'VundleVim/Vundle.vim'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'Tabular'
    "Plugin 'Pydiction'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-repeat'
    Plugin 'terryma/vim-expand-region'
    "Plugin 'tpope/vim-abolish'
    "Plugin 'vis'
    Plugin 'visIncr'
    " Plugin 'easymotion/vim-easymotion'
    Plugin 'haya14busa/incsearch.vim'
    " Plugin 'haya14busa/incsearch-easymotion.vim'
    Plugin 'haya14busa/incsearch-fuzzy.vim'
    Plugin 'vim-latex/vim-latex'
    Plugin 'nelstrom/vim-visual-star-search'
    "Plugin 'Valloric/YouCompleteMe'
    " Plugin 'vim-scripts/VisIncr'
    " Plugin 'python-mode/python-mode' 
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line"
    "
    "


    "let Tlist_Ctags_Cmd='ctags.exe'
    "let Tlist_Auto_Open=0
    "let g:pydiction_location = 'd:\Vim\vimfiles\bundle\Pydiction\complete-dict'
    "let g:pydiction_menu_height = 20


"Essential   {{{1
    set nrformats=          " numbers increase and decrease win Decimal
    set nobackup
    set noswapfile
    set history=200         " remember command histor 
    set hlsearch
    set incsearch           " increase search coloring
    set ruler               " percent at right-bottom
    set showcmd		" display incomplete commands
    set wildmenu		" display completion matches in a status line
    set number
    "set clipboard+=unnamed  " system clipboard and vim rigister share
    set winaltkeys=no       " disable alt to menu
    set fdm=marker
    set backspace=indent,eol,start

"TEXT format   {{{1
    set autoindent
    set smartindent
    set shiftwidth=4
    set softtabstop=4
    "set expandtab

" Lang & Encoding    {{{1
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
    "set fileencodings=utf-8,gbk,latin1
    set fileencodings=ucs-bom,utf-8,chinese,cp936
    "set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
    "set encoding=utf-8
    set langmenu=en_US.utf-8
    let $LANG = 'en_US'
    language messages en_US.utf-8

"GUI   {{{1
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    syntax on
    colorscheme evening
    winpos 1600 80
    set lines=35 columns=128
    set linespace=5
    set guioptions-=T
    set guioptions-=r
    set splitbelow
    set guifont=Inconsolata:h15 
    highlight WhitespaceEOL ctermbg=red guibg=red 
    match WhitespaceEOL /\s\+$/

"KeyMap   {{{1
    let mapleader = "\<Space>"
    nmap <leader>rr :source $VIM/_vimrc<cr>
    nmap <leader>ee :e $VIM/_vimrc<cr>
    nmap <leader>q :q!<cr>
    nmap <leader>j ggVGgJggVG"+y
    "nmap <leader>k <C-w>k
    "nmap <leader>h <C-w>h
    "nmap <leader>l <C-w>l
    nmap <leader>g <C-q>1000j
    nmap <leader>z zR
    nmap <leader>n :%normal 
    nnoremap <Leader>s :w<CR>
    nnoremap <Leader>t :tabnew<CR>
    vmap <Leader>c "+y
    vmap <Leader>x "+d
    nmap <Leader>a ggVG
    nmap <Leader>v "+p
    nmap <Leader>V "+P
    vmap <Leader>v "+p
    vmap <Leader>V "+P
    nmap <F1> :help <C-r><C-w><cr>
    "nnoremap <CR> G
    "nnoremap <BS> gg
    noremap gV `[v`]`

    "imap <cr> <esc>o

    "nmap <F2> I"<Esc>
    nmap <F2> ggVG
    imap <F2> <Esc>ggVG
    map <F3> "+y
    map <F4> "+gP
    imap <F4> <C-r>+
    cmap <F4> <C-r>+
    
    map <C-c> "+y
    map <C-v> "+gP
    imap <C-v> <C-r>+
    cmap <C-v> <C-r>+
    noremap <C-S> :update<CR>
    vnoremap <C-S> <C-C>:update<CR>
    inoremap <C-S> <C-O>:update<CR>
    
    silent! vunmap <C-X>
    nmap <F11> :%s/[\u4E00-\u9FFF]//gn
    vmap <F11> :s/[\u4E00-\u9FFF]//gn
    nmap <F10> :%s///g<left><left>
    map <F12> :!python.exe %
    nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 

"User function {{{
"function Inc(...)
"    let result = g:i
"    let g:i += a:0 > 0 ? a:1 : 1
"    return result
"endfunction
"PlugIn KeyMap {{{1
    map /  <Plug>(incsearch-forward)
    map ?  <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)
    map z/ <Plug>(incsearch-fuzzy-/)
    map z? <Plug>(incsearch-fuzzy-?)
    map zg/ <Plug>(incsearch-fuzzy-stay)
    
    vmap v <Plug>(expand_region_expand)
    vmap V <Plug>(expand_region_shrink)

"VimLatex required    {{{
    " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
    "filetype plugin on
    
    " IMPORTANT: win32 users will need to have 'shellslash' set so that  " latex " can be called correctly.
    set shellslash
    
    " OPTIONAL: This enables automatic indentation as you type.     "filetype indent on
    
    " " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files    " defaults to " 'plaintex' instead of 'tex', which results in vim-latex    " not being loaded.  " The following changes the default filetype back to    " 'tex':
     "let g:tex_flavor='latex'
     let g:tex_flavor='latex'
     let g:Tex_DefaultTargetFormat = 'pdf'
     let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""' 
     let g:Tex_CompileRule_pdf = 'xelatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
