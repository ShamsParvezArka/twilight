syntax on
filetype plugin indent on

" Disable Vi Mode
set nocompatible

" Fast Font Rendering
set ttyfast
set lazyredraw

" Auto Completion
set omnifunc =syntaxcomplete#Complete

" Relative Number
set rnu
set nu

" Indentation
set autoindent
set smartindent
set expandtab
set shiftround
set tabstop    =4
set shiftwidth =4

" Find and Replace
set ignorecase
set incsearch 
set hlsearch

" Mouse Cursor Wrap Clipboard
set mouse      =a
set guicursor +=a:blinkon0
set wrap
set clipboard  =unnamedplus

" Buffer
set hidden

" Splitting
set splitbelow
set splitright

" Disable [Menu-bar, Tool-bar, Scroll-bar(right, left)]
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L

" Backup & Undo Directory
set backup
set undofile
set backupdir =$HOME/.vim/files/backup
set undodir   =$HOME/.vim/files/undo

" Colorscheme
colorscheme gruber

" Font Integration
let g:font_family ='IosevkaTerm Nerd Font Mono'
let g:font_size   =21
let &guifont      =g:font_family . "\ " . g:font_size

function! AdjustFontSize(amount)
    let g:font_size =g:font_size+a:amount
    let &guifont    =g:font_family . "\ " . g:font_size
endfunction

noremap  <C-S-+>                  :call AdjustFontSize(1)<CR>
noremap  <C-S-_>                  :call AdjustFontSize(-1)<CR>
noremap  <C-ScrollWheelUp>        :call AdjustFontSize(1)<CR>
noremap  <C-ScrollWheelDown>      :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp><Esc>   :call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown><Esc> :call AdjustFontSize(-1)<CR>a

" Macro [Buffer]
map <S-p> :bp<CR>
map <S-n> :bn<CR>

