call plug#begin()
    " A collection of language packs for Vim
    Plug 'sheerun/vim-polyglot'
    " Insert or delete brackets, parens, quotes in pair
    Plug 'jiangmiao/auto-pairs'
    " Comment stuff out
    Plug 'tpope/vim-commentary'
    " add/delete/replace surroundings of a sandwiched textobject
    Plug 'machakann/vim-sandwich'
    " Lean & mean status/tabline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Dark color scheme
    Plug 'tomasiser/vim-code-dark'
call plug#end()

set termguicolors
let g:enable_bold_font = 1
let g:enable_italic_font = 1

set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set showtabline=2
set splitright splitbelow
set autoindent smartindent
set mouse=a                 " enable mouse support (all modes)
set ignorecase              " ignore case when searching
set smartcase               " case-sensitive when pattern isn't lower case
set nobackup nowritebackup  " some language servers have issues with backup files
set hidden                  " hide current current buffer when a new file is opened
set inccommand=split        " enable interactive substitution"
set cursorline              " highlight current line
set linebreak               " never split lource vimrcnes within words
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set updatetime=100

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

let mapleader="\<space>"
set timeoutlen=500

" edit & source vimrc
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>:echo 'init.vim was sourced'<CR>

" enter terminal-mode
nnoremap <silent> <leader>ts :sp<CR>:term<CR>i
nnoremap <silent> <leader>tv :vs<CR>:term<CR>i

" exit terminal-mode
tnoremap <leader>[ <C-\><C-n>

" show buffers and wait for selection
nnoremap <leader>b :ls<CR>:b<Space>

" buffers navigation
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

" toggle cursorline & cursorcolumn
nnoremap <leader>cl :set cursorline!<CR>
nnoremap <leader>cc :set cursorcolumn!<CR>

" toggle highlight search
nnoremap <leader>hls :set hlsearch!<CR>

" move lines up and down
nnoremap <silent> <A-k> :m .-2<CR>==
nnoremap <silent> <A-j> :m .+1<CR>==

" swap characters
nnoremap <silent> <A-l> xp
nnoremap <silent> <A-h> Xph


" plugins configurations
source $HOME/.config/nvim/pconf/vim-airline.vim
source $HOME/.config/nvim/pconf/vim-code-dark.vim
