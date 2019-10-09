filetype off " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'taglist-plus'
Plugin 'winmanager'
Plugin 'bufexplorer'
Plugin 'Tagbar'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'matlab'
Plugin 'cscope_maps'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 安装插件写在这之前
call vundle#end() " required
filetype plugin on 

" required" 常用命令
" :PluginList - 查看已经安装的插件
" :PluginInstall - 安装插件
" :PluginUpdate - 更新插件
" :PluginSearch - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean - 删除插件，把安装插件对应行删除，然后执行这个命令即可
" h: vundle - 获取帮助

" NERDTree 插件配置
"打开关闭快捷键
map <F3> :NERDTreeToggle<CR>
"当只剩下目录树时，自动关闭vim。
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" bufexploer插件配置
map <leader><leader> \be

" taglist options
map <F4> :TlistToggle<CR>
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联
let Tlist_Auto_Open =1
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出
let Tlist_Use_SingleClick=1
let Tlist_Use_Right_Window=1 

" Tagbar 插件配置
map <F2> :TagbarToggle<CR>
let g:tagbar_left = 1

" MarkDownPreview 插件配置
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
let g:mkdp_path_to_chrome = "firefox" 
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开markdown 文件的时候打开一次
let g:mkdp_auto_start = 0 
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预览窗口
let g:mkdp_auto_open = 0
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不自动关闭预览窗口
let g:mkdp_auto_close = 1
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览
let g:mkdp_refresh_slow = 0
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown文件可以使用改命令
let g:mkdp_command_for_global = 0
" 普通模式
nmap <silent> <F8> <Plug>MarkdownPreview
" 插入模式
imap <silent> <F8> <Plug>MarkdownPreview
" 普通模式
nmap <silent> <F9> <Plug>StopMarkdownPreview
" 插入模式
imap <silent> <F9> <Plug>StopMarkdownPreview

" markdown-vim 插件配置
let g:vim_markdown_folding_disabled = 1

" " /***************************************************************
"                            vim编辑设置
" ***************************************************************/
set fencs=utf-8,ucs-bom,gbk,cp936,gb2312,gb18030,cp936
set nobackup
set ff=unix
set nocompatible  " VIM POWER!!!!
set conceallevel=2

set showcmd
set nocp
set synmaxcol=200
"set showmatch     " Show matching brackets (briefly jump to it)
set splitright
set nosplitbelow
set magic
set backspace=indent,eol,start

" Backup and history options
set history=1000             " Increase history size
"set background=dark         " Set best color scheme to dark consoles
set autoread                 " automagically reloads a file if it was externally modified
set autowrite
set textwidth=120            " don't break long lines
set formatoptions=tcmqn1

" list chars
set list
set listchars=tab:▸\ ,

" Searching
set hlsearch   " highlight search results
set incsearch  " incremental search
set ignorecase
set infercase
set smartcase
set nogdefault " don't use global as default in substitutions

" Appearance
set title      " Change the terminal title
set modelines=0
set ttyfast    " Smooth editing
set showmode
set number
set hidden
set ruler
set nowrap     " don't visually breaks long lines
set t_Co=256   " setting the number of colors
set guitablabel=%n\ %f
set showcmd
set showfulltag

" C syntax options (see :help c.vim)
let c_syntax_for_h    = 0 " use c syntax to .h files instead of c++ syntax
let c_space_errors    = 0 " trailing whitespave or spaces before tabs
let c_comment_strings = 0 " highligh numbers and strings insede comments
let c_no_comment_fold = 1 " disable syntax based folding for comments
let c_gnu             = 1 " highlight gnu extensions
let c_minlines        = 100

" AutoComplPop
let g:acp_completeoptPreview    = 1
let g:acp_behaviorKeywordLength = 3
let g:acp_mappingDriven         = 1

" EnhancedCommentify
let g:EnhCommentifyMultiPartBlocks = 'yes'
let g:EnhCommentifyAlignRight      = 'yes'
let g:EnhCommentifyPretty          = 'yes'
let g:EnhCommentifyFirstLineMode   = 'yes'
let g:EnhCommentifyRespectIndent   = 'yes'
let g:EnhCommentifyUseBlockIndent  = 'yes'
let g:EnhCommentifyBindInNormal    = 'no'
let g:EnhCommentifyBindInVisual    = 'no'
let g:EnhCommentifyBindInInsert    = 'no'

" Lua
let g:lua_complete_omni     = 1
let g:lua_compiler_name     = '/usr/bin/luac'
let g:lua_check_syntax      = 1
let g:lua_complete_keywords = 1
let g:lua_complete_globals  = 1
let g:lua_complete_library  = 1
let g:lua_complete_dynamic  = 1

" Python
let g:pyindent_open_paren    = '&sw'
let g:pyindent_nested_paren  = '&sw'
let g:pyindent_continue      = '&sw *2'
let g:python_highlight_all   = 1
let python_print_as_function = 1

" syntastic
let g:syntastic_enable_signs        = 1
let g:syntastic_check_on_open       = 0
let g:syntastic_echo_current_error  = 0
let g:syntastic_auto_jump           = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_auto_loc_list       = 2
let g:syntastic_quiet_warnings      = 0
let g:syntastic_stl_format          = 'E:%e,W:%w'
let g:syntastic_mode_map            = { 'mode'              : 'passive',
                                      \ 'active_filetypes'  : [],
                                      \ 'passive_filetypes' : ['c', 'cpp', 'python', 'tex']}

" vhdl syntax configuration
let g:vhdl_indent_genportmap = 0
let g:vhdl_indent_rhsassign = 1

" TagHighlight
let g:TagHighlightSettings = { 'IncludeLocals': 'False' }

" haskell syntax highlighting configuration
let hs_highlight_types      = 1
let hs_highlight_more_types = 1
let hs_highlight_boolean    = 1

" Tagbar configurations
let g:tagbar_left = 1
let g:tagbar_ctags_bin = 'ctags'  
let g:tagbar_width = 30 

" TaskList configuration
let g:tlTokenList = ['TODO', 'FIXME', 'NOTE', 'HACK', 'XXX']

" Haskell
let g:haddock_browser = "/usr/bin/luakit"

" Defines line limit for yaifa scanning
let yaifa_max_lines = 1024

" omnicppcomplete options
let OmniCpp_GlobalScopeSearch   = 1 " searches in the global scope
let OmniCpp_NamespaceSearch     = 2 " search in included files also
let OmniCpp_DisplayMode         = 1 " always show all class members
let OmniCpp_ShowScopeInAbbr     = 0 " don't show scope in abbreviations
let OmniCpp_ShowPrototypeInAbbr = 1 " display prototype in abbreviations
let OmniCpp_ShowAccess          = 1 " show access
let OmniCpp_MayCompleteDot      = 1 " automatically completes after a '.'
let OmniCpp_MayCompleteArrow    = 1 " automatically completes after a '->'
let OmniCpp_MayCompleteScope    = 1 " automatically completes afer a '::'
let OmniCpp_SelectFirstItem     = 0 " don't select the first match in the popup menu

" ManPageView
let g:manpageview_winopen = "hsplit="

" C highlighting
hi DefinedByUser ctermfg=lightgrey guifg=blue
hi cBraces ctermfg=lightgreen guifg=lightgreen
hi link cUserFunction DefinedByUser
hi link cUserFunctionPointer DefinedByUser

" Vim Grep
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn .git'
let Grep_Cygwin_Find = 1

function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

" 格式强制配置
" 删除行尾空格
nnoremap <leader>f :%s/\s\+$//<cr>

function! KRIndent()
    let c_space_errors = 0
    set fileformats=unix
    set textwidth=120
    set noexpandtab
    set shiftround
    set cindent
    set formatoptions=tcqlron
    set cinoptions=:0,l1,t0,g0
    syntax keyword cType u8 u16 u32 u64 s8 s16 s32 s64 off64_t
    highlight default link LinuxError ErrorMsg

    syntax match LinuxError / \+\ze\t/     " spaces before tab
    syntax match LinuxError /\s\+$/        " trailing whitespaces
    syntax match LinuxError /\%121v.\+/    " virtual column 121 and more
endfunction
if has("autocmd")
    autocmd FileType c,cpp,h,hh call KRIndent()
endif

" 以下四行参数请不要修改
set shiftwidth=4
set tabstop=4
set softtabstop=4

" matlab config
source $VIMRUNTIME/macros/matchit.vim
filetype indent on
autocmd BufEnter *.m    compiler mlint

map g<C-/> :cs find 3 <C-R>=expand(“<cword>”)<CR><CR>
