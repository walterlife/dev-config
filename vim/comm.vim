"Vundle 管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 让 Vundle 管理 Vundle
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'vim-scripts/Tagbar'
Bundle 'vim-scripts/snipMate'
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/comments.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'

"---------------------------------------------------------------------------
" 通用设置
"---------------------------------------------------------------------------

" 历史记录 在 .viminfo 中记录
set history=400

" 快捷键激活
let mapleader =","

filetype plugin indent on
syntax enable on

set backup
if !isdirectory($HOME."/.vim/backupdir")
    silent! execute "!mkdir ~/.vim/backupdir"
endif
set backupdir=~/.vim/backupdir

" 不产生.swap文件
set noswapfile

set helplang=cn
set nocompatible
set winaltkeys=no
set tags=~/.vim/comm_tags,~/.vim/cpp_tags,tags,tags; 
set foldmethod=syntax
set foldlevel=99

" 重新打开时自动定位到原来的位置
autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal! g'\"" |
	\ endif

autocmd InsertLeave * if &paste == 1|set nopaste |endif

let &termencoding = &encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb2312,big5,euc-jp,euc-kr,latin1,chinese
language messages POSIX

" 距离垂直边界 n 行就开始滚动
set scrolloff=5 
" 水平滚动列数
set sidescroll=1 
" 距离水平边界 n 行就开始滚动
set sidescrolloff=10 

set fileformats=unix,mac,dos

"主题 
colorscheme peachpuff
let g:solarized_termtrans=1
let g:solarized_hitrail   =   0
set cursorline

set showcmd
set nu
set incsearch
set hlsearch

" 正则表达式使用
set magic

set showmatch
set matchpairs+=<:>

" 鼠标和剪贴板
set mouse=v
set clipboard+=unnamed
set cmdheight=1

" 显示当前位置
set ruler

set autoindent
set smartindent 
set cindent 
set smarttab
" 开启把Tab扩展为空格
set expandtab 
" 设置Tab宽度为4个字符
set tabstop=4 
" 软缩进宽度
set softtabstop=4 
" 设置移动代码块宽度
set shiftwidth=4 
" 移动代码块时取整到缩进宽度
set shiftround 

" 同时打开多个文件时，修改时同时生效
set autoread
set autowrite
set lazyredraw

" powerline
set laststatus=2
set t_Co=256
" 设置paste
set pastetoggle=<F9>

" 在vim中启用backspace
"set backspace=indent,eol,start

" vim 命令行中tab键补全文件
set wildmenu
set wildmode=list:longest,full
" 设置忽略文件类型
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=classes
set wildignore+=lib
set wildignore=*.o,*~,*.pyc

"----------------------------------------------------------------------------
" 快捷键绑定
"----------------------------------------------------------------------------
" vim 帮助
map  <F1> :help <C-R>=expand('<cword>')<CR><CR>

"标签页打开文件
nnoremap ,t <Esc>:tabedit 

" sp/vsp 打开文件
nnoremap ,s <Esc>:sp 
nnoremap ,d <Esc>:vsp 

" 退出文件和保存文件相关
nnoremap ,q <Esc>:q!<CR>
nnoremap ,w <Esc>:w!<CR>
nnoremap ,m <Esc>:wqa<CR>

" 转换单词大小写 
nnoremap ,u <Esc>:call SET_UAW()<CR>

" 多个窗口间移动
nnoremap <C-H> <Esc><C-W>h
nnoremap <C-L> <Esc><C-W>l
nnoremap <C-J> <Esc><C-W>j
nnoremap <C-K> <Esc><C-W>k

" 重新生成 ctags 文件
nnoremap ,r <Esc>:call RESET_CTAG_CSCOPE()<CR>

" a.vim 
nnoremap ,a <Esc>:A<CR>

" Doxygen
nnoremap \d :Dox<CR>
nnoremap \m :DoxAuthor<CR>

" Tagbar setting
nnoremap <silent> <F6> :TagbarToggle<CR>

" 罗列出多个函数列表
nnoremap <C-]> <Esc>g]

" nerdtree
map <F7> :NERDTreeToggle<CR>

"---------------------------------------------------------------------------
"插件设置
"---------------------------------------------------------------------------
" Doxygen
let g:DoxygenToolkit_briefTag_pre="@brief  " 
let g:DoxygenToolkit_paramTag_pre="@param  " 
let g:DoxygenToolkit_returnTag="@return  " 
let g:DoxygenToolkit_authorName="walter" 
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

" Tagbar setting
let g:tagbar_width = 30 
let g:tagbar_expand = 0
let g:tagbar_autofocus = 1

" powerline
let g:Powerline_colorscheme = 'solarized256'

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" markdown
let g:vim_markdown_folding_disabled = 1

" nerdtree
" 常用内置快捷说明
" O 递归打开/关闭所选目录
" o 打开/关闭当前文件/目录
" m 显示目录,对此可以新建文件,重命名文件等操作
" s 以 vsplit 新打开文件
" p 跳到当前 父节点
" P 调到根节点
" K J 用于 同一level =节点间跳转

" 启动vim时就显示书签
autocmd VimEnter * NERDTree

"----------------------------------------------------------------------------
" 文件类型设置 
"----------------------------------------------------------------------------
" 通用
autocmd BufEnter *  set tabstop=4 

" .cpp
autocmd BufEnter  *.cpp,*.c,*.h call s:SET_PATH("include") 
autocmd FileType c set omnifunc=ccomplete#Complete

" .c .h 
autocmd BufEnter *.c  set filetype=cpp
autocmd BufEnter *.h  set filetype=cpp
autocmd BufEnter *.hpp  set filetype=cpp

" python
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent

" Vim 
autocmd FileType vim set nofen
autocmd FileType vim map <buffer> <leader><space> :w!<cr>:source %<cr>

" java
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java set completefunc=javacomplete#CompleteParamsInfo

" others
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.proto set filetype=proto
autocmd BufRead \d\+-\(\w\+\)-\d\{6\}-\d\{4\}  set filetype=log
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd
au BufNewFile,BufRead *.gradle setf groovy

" 新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.html,*.cpp,*.cc,*.[ch],*.hpp,*.sh,*.rb,*.java,*.py exec ":call SetTitle()"

"----------------------------------------------------------------------------
" 函数 
"----------------------------------------------------------------------------
" 获取当前路径的上一级的路径
function! GET_UP_PATH(dir)
    let pos=len(a:dir)-1
    while pos>0 
        if (a:dir[pos]=="/" )
            return 	strpart(a:dir,0,pos)
        endif
        let pos=pos-1 
    endwhile
    return  ""  
endfunction

" 设置相关tags
function! s:SET_TAGS()
    let dir =getcwd()  "获得源文件路径
    set tags=
    "在路径上递归向上查找tags文件 
    while dir!=""
        if findfile("tags",dir ) !=""
            "找到了就加入到tags
            exec "set tags+=" . dir . "/tags"
        endif
        "得到上级路径
        let dir=GET_UP_PATH(dir)
    endwhile
    if ( &filetype =="cpp" )
        set tags+=~/.vim/bundle/myfix/comm_tags
    endif
endfunction

" 设置相关 include , for cmd : gf 
function! s:SET_PATH( find_dir )
    let dir = expand("%:p:h") "获得源文件路径
    let dir_relative=''
    let g:alternateSearchPath = ''
    "let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:.'
    "在路径上递归向上查找tags文件 
    while dir!=""
        if finddir(a:find_dir ,dir ) !=""
            "找到了就加入到tags
            exec "set path+=" . dir . "/". a:find_dir
            let g:alternateSearchPath = g:alternateSearchPath.'sfr:'.dir_relative.a:find_dir."," 
        endif
        "得到上级路径
        let dir_relative=dir_relative . "../"
        let dir=GET_UP_PATH(dir)
    endwhile
endfunction

" 重新生成cjag cscope
function! RESET_CTAG_CSCOPE() 
    "if(executable('cscope') && has("cscope") )
        "silent! execute "!find . -name '[^.]*.h' -o -name '[^.]*.c' -o -name '[^.]*.cpp' -o -name '[^.]*.hpp' > cscope.files"
        "silent! execute "!cscope -bkq"
        "if (filereadable("cscope.out"))
            "execute "cs reset"
        "endif
    "endif
    if(executable('ctags'))
        silent! execute "!rm -f tags"
        silent! execute "!ctags -R  --languages=c,c++ --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    exec "redraw!"
endfunction

" 转换大小写
function! SET_UAW()
    let save_cursor = getpos(".")
    
    let line = getline('.')
    let col_num = col('.')
    if match("ABCDEFGHIJKLMNOPQRSTUVWXYZ",line[col_num-1])!= -1
        exec "normal! guaw"
    else
        exec "normal! gUaw"
    endif
    
    call setpos('.', save_cursor)
endfunction

" 定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"#!/usr/bin/env bash")
        call append(line("."),   "########################################################################")
        call append(line(".")+1, "#    File Name: ".expand("%"))
        call append(line(".")+2, "# ")
        call append(line(".")+3, "#       Author: Shootao Shanghai,Inc.")
        call append(line(".")+4, "#         Mail: walter@shootao.com")
        call append(line(".")+5, "# Created Time: ".strftime("%c"))
        call append(line(".")+6, "#  Description: ...")
        call append(line(".")+7, "# ")
        call append(line(".")+8, "########################################################################")
        call append(line(".")+9, "set -euo pipefail")
        call append(line(".")+12, "")
        call append(line(".")+13, "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# -*- coding=utf-8 -*-")
        call append(line(".")+1, "########################################################################")
        call append(line(".")+2, "#    File Name: ".expand("%"))
        call append(line(".")+3, "# ")
        call append(line(".")+4, "#       Author: Shootao Shanghai,Inc.")
        call append(line(".")+5, "#         Mail: walter@shootao.com")
        call append(line(".")+6, "# Created Time: ".strftime("%c"))
        call append(line(".")+7, "#  Description: ...")
        call append(line(".")+8, "#                ")
        call append(line(".")+9, "########################################################################")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
        call append(line(".")+12, "if __name__ == '__main__':")
        call append(line(".")+13, "\tpass")
    elseif &filetype == 'html'
        call setline(1,"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\">")
        call append(line("."),"<html lang=\"en\">")
        call append(line(".")+1, "<head>")
        call append(line(".")+2, "    <title> </title>")
        call append(line(".")+3, "</head>")
        call append(line(".")+4, "<body>")
        call append(line(".")+5, "")
        call append(line(".")+6, "</body>")
        call append(line(".")+7, "</html>")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."),   " *    File Name: ".expand("%"))
        call append(line(".")+1, " * ")
        call append(line(".")+2, " *       Author: Shootao Shanghai,Inc.")
        call append(line(".")+3, " *         Mail: walter@shootao.com")
        call append(line(".")+4, " * Created Time: ".strftime("%c"))
        call append(line(".")+5, " * ")
        call append(line(".")+6, " *  Description: ...")
        call append(line(".")+7, " * ")
        call append(line(".")+8, " ************************************************************************")
        call append(line(".")+9, "*/")
        call append(line(".")+10, "")
    endif
    if expand("%:e") == 'cpp'
        call append(line(".")+10, "#include <iostream>")
        call append(line(".")+11, "using namespace std;")
        call append(line(".")+12, "")
    elseif expand("%:e") == 'cc'
        call append(line(".")+10, "#include <iostream>")
        call append(line(".")+11, "using namespace std;")
        call append(line(".")+12, "")
    endif
    if &filetype == 'c'
        call append(line(".")+10, "#include <stdio.h>")
        call append(line(".")+11, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+10, "#ifndef __".toupper(expand("%:r"))."__H")
        call append(line(".")+11, "#define __".toupper(expand("%:r"))."__H")
        call append(line(".")+12, "")
        call append(line(".")+13, "")
        call append(line(".")+14, "#endif")
    elseif expand("%:e") == 'hpp'
        call append(line(".")+10, "#ifndef __".toupper(expand("%:r"))."__H")
        call append(line(".")+11, "#define __".toupper(expand("%:r"))."__H")
        call append(line(".")+12, "")
        call append(line(".")+13, "")
        call append(line(".")+14, "#endif")
    endif
    "新建文件后，自动定位到文件末尾
endfunc

"----------------------------------------------------------------------------
" 项目中自定义调用 SHELL CMD 
"----------------------------------------------------------------------------
" 编译项目
nnoremap ,c :!COMPILE<C-R>
