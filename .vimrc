"打开语法高亮。自动识别代码，使用多种颜色显示"
syntax on
"开启文件类型检查"
filetype plugin indent on


"设置编码"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


"在底部显示，当前处于命令模式还是插入模式"
set showmode
"命令模式下，在底部显示，当前键入的指令"
"比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失"
set showcmd

"支持使用鼠标"
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"启用256色"
set t_Co=256

"设置粘贴模式"
set paste


"按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致"
set autoindent
"按下 Tab 键时，Vim 显示的空格数"
set tabstop=2
"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数"
set shiftwidth=2
"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格"
set expandtab
"Tab 转为多少个空格"
set softtabstop=2

"显示行号"
set number
"光标所在的当前行高亮"
set cursorline
"突出显示当前列"
"set cursorcolumn"


"设置行宽，即一行显示多少个字符"
set textwidth=120

"自动折行，即太长的行分成几行显示"
set wrap
"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行"
set linebreak
"指定折行处与编辑窗口的右边缘之间空出的字符数"
set wrapmargin=4

"垂直滚动时，光标距离顶部/底部的位置（单位：行）"
set scrolloff=5
"水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用"
set sidescrolloff=15

"是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示"
set laststatus=2
"在状态栏显示光标的当前位置（位于哪一行哪一列）"
set ruler


set foldenable
set foldmethod=manual
set foldclose=all


"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号"
set showmatch

"搜索时，高亮显示匹配结果"
set hlsearch
"输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果"
set incsearch
"搜索时忽略大小写"
set ignorecase
"如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感"
set smartcase


"不创建备份文件"
"默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）"
set nobackup
"不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp"
set noswapfile

"自动切换工作目录"
set autochdir

"出错时，发出视觉提示，通常是屏幕闪烁"
set visualbell

"Vim 需要记住多少次历史操作"
set history=1000

"打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示"
set autoread

"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块"
set listchars=tab:»■,trail:■
set list

"命令模式下，底部操作指令按下 Tab 键自动补全"
"第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令"
set wildmenu
set wildmode=longest:list,full
