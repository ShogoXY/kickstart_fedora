" run python script always save first
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" global hot key

nnoremap <Space> :
nnoremap <C-s> :w <CR>

"show number line and relative number from 1 to cursor
set nu
set relativenumber
set noswapfile
set colorcolumn=80


"line on cursor
set cursorline 

" no wrap line if its to long
set nowrap

"enable mouse
set mouse=a
set clipboard+=autoselect guioptions+=a
nnoremap <A-LeftMouse> <A-LeftMouse>i

"enable syntax highlight
syntax enable

set expandtab
set sw=4
set sts=4

" show the matching part of the pair for [] {} and ()
set showmatch
set smartindent
set smarttab
set autoindent
set shiftwidth=4

" split screen 

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" enable all Python syntax highlighting features
let python_highlight_all = 1

""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O




"  Vundle   ###################################################################
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"  Plugin    ##################################################################



Plugin 'dense-analysis/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides'

"  NERDTREE   #################################################################
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-n> :let NERDTreeShowHidden=1 <CR>


"Plugin 'jistr/vim-nerdtree-tabs'

"power line
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


"  Color   ####################################################################

set background=dark
let g:solarized_termcolors=256
set t_Co=256
"colorscheme solarized

colorscheme gruvbox
"colorscheme onedark


"##################################################


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"  BuckUp   ###################################################################
  
"Turn on backup option                                          
set backup                                                      

"Where to store backups                                         
silent !mkdir .vim_backup > /dev/null 2>&1                      
"Make backup before overwriting the current buffer              
set backupdir=.vim/backup//                                     
set writebackup                                                 
   
"Overwrite the original backup file                             
set backupcopy=yes                                              
  
"Meaningful backup name, ex: filename@2015-04-05.14:59          
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")          
   
" copy   ######################################################################

vmap <C-c> "+yi 
vmap <C-x> "+c
vmap <C-p> c<ESC>"+p
imap <C-p> <ESC>"+pa 
 
