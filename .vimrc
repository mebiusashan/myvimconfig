"""""""""""""""""""""""""""""""""
" 显示相关
"""""""""""""""""""""""""""""""""
set nu "显示行号
syntax on "语法高亮
set ruler "显示标尺
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set enc=utf-8
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" Tab键的宽度
set tabstop=4
" 自动缩进
set autoindent
set cindent
" 侦测文件类型
filetype on
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
set cursorline              " 突出显示当前行
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
colorscheme molokai

