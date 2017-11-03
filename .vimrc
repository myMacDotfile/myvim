
set nocompatible              " be iMproved, required 去掉vi的一致性

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Bundle 'gmarik/vundle'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

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
" Put your non-Plugin stuff after this line
" :PluginList  - 列出配置的插件
" :PluginInstall  - 安装插件;附加`！`来更新或只是：PluginUpdate 
" :PluginSearch foo  - 搜索foo; 附加`！`刷新本地缓存
" :PluginClean  - 确认删除未使用的插件;附加`！`以自动批准删除


" 支持自动完成 C、Objectiv-c、C#、C++、Objectiv-C++、Php、Javascript、Typescript、python、Go、Rust


" Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'kien/rainbow_parentheses.vim'

" 拥有python几乎所有IDE的功能，吐血推荐 ，杀手级python插件
Bundle 'klen/python-mode' 
" 虚拟环境python支持
Plugin 'jmcantrell/vim-virtualenv' 
" js支持
Plugin 'pangloss/vim-javascript' 
" 书写html和css，前端支持
Bundle 'mattn/emmet-vim' 
Bundle 'SirVer/ultisnips'
" 支持各种流行编程语言的语法检测
Bundle 'scrooloose/syntastic'
" 支持大纲浏览
Bundle 'majutsushi/tagbar' 
" git支持，直接在vim中执行git命令。一个特别方便的命令就是:Gblame，可以看到每一行代码是谁在啥时候提交的(有问题能直接找他问)。
Plugin 'tpope/vim-fugitive' 
" 快速注释，支持几乎所有编程语言
Bundle 'scrooloose/nerdcommenter'
" 缩进线条，可以set cursorline 加上水平线条，python里这个还是很必要的
Plugin 'yggdroot/indentline'
" 启动的时候显示一些编程相关的名言警句和最近打开文件,很有意思
Plugin 'mhinz/vim-startify'

call vundle#end()            " required
filetype plugin indent on    " required



let g:airline_powerline_fonts = 1

map f <Plug>CtrlSFPrompt
map F <Plug>CtrlSFQuickfixPrompt
" :CtrlSF
map <F3> :TagbarToggle<CR>


" powerline 
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


set guifont=Monaco\ for\ Powerline:h12.5  
set laststatus=2  
" let g:Powerline_symbols = 'fancy'  
set encoding=utf-8  
" set t_Co=256  
set number  
" set fillchars+=stl:\ ,stlnc:\  
" set term=xterm-256color  
set termencoding=utf-8  
syntax enable  
set background=light  
" colorscheme solarized  



" Plugin 'scrooloose/nerdtree'

" --- 设置NerdTree ---

" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="left"
" F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
" 显示书签"
let NERDTreeShowBookmarks=1
" 设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" 窗口大小"
let NERDTreeWinSize=25


" Plugin 'Yggdroot/indentLine'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'scrooloose/nerdcommenter'
" let mapleader=','
" 注释和反注释"
map <F4> <leader>ci <CR>

" Plugin 'tell-k/vim-autopep8'

"缩进指示线"
let g:indentLine_char='┆'
" let g:indentLine_char='|'
let g:indentLine_enabled = 1

"autopep8设置"
let g:autopep8_disable_show_diff=1


"  隐藏滚动条  
" set guioptions-=r 
" set guioptions-=L
" set guioptions-=b
" 隐藏顶部标签栏" 
" set showtabline=0
" 设置字体" 
set guifont=Monaco:h12         
syntax on    " 开启语法高亮" 
" let g:solarized_termcolors=256    " solarized主题设置在终端下的设置" 
" set background=dark        " 设置背景色" 
" colorscheme solarized
set nowrap    " 设置不折行"
set nofoldenable
" set fileformat=unix    " 设置以unix的格式保存文件" 
" set cindent        " 设置C样式的缩进格式" 
set tabstop=4    " 设置table长度" 
set shiftwidth=4        " 同上" 
set showmatch    " 显示匹配的括号" 
set scrolloff=5        " 距离顶部和底部5行" 
set laststatus=2    " 命令行为两行" 
set fenc=utf-8      " 文件编码" 
set backspace=2
set mouse=a        " 启用鼠标" 
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase        " 忽略大小写" 
set incsearch
set hlsearch        " 高亮搜索项" 
" set noexpandtab        " 不允许扩展table" 
set whichwrap+=<,>,h,l
set autoread
set cursorline        " 突出显示当前行" 
" set cursorcolumn        " 突出显示当前列" 

" 是否启用顶部tabline
let g:airline#extensions#tabline#enabled = 1
" 顶部tabline显示方式
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" 调整tmux配色方案 

if exists('$TMUX')
    set term=screen-256color
  endif
" 调整tmux 运行Vim 光标形状

" if exists('$ITERM_PROFILE')
"   if exists('$TMUX') 
"     let &amp;t_SI = "\<Esc>[3 q"
"     let &amp;t_EI = "\<Esc>[0 q"
"   else
"     let &amp;t_SI = "\<Esc>]50;CursorShape=1x7"
"     let &amp;t_EI = "\<Esc>]50;CursorShape=0x7"
"   endif
" end

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


" 按F5运行python" 
map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
  let mp = &makeprg
  let ef = &errorformat
  let exeFile = expand(" %:t" )
  setlocal makeprg=python\ -u
  set efm=%C\ %.%#,%A\ \ File\ \" %f\" \\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
  silent make %
  copen
  let &makeprg = mp
  let &errorformat = ef
endfunction
