" basic vim settings (tabs, line numbers, etc.)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=2
set mouse=a
set number
set expandtab
set relativenumber
set autoindent

" plugins
call plug#begin()
Plug 'sainnhe/sonokai'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tribela/vim-transparent'
call plug#end()

" color fix
if has('termguicolors')
    set termguicolors
endif

" sonokai theme configuration
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 0
colorscheme sonokai

" tabs
map <C-z> :tabp<CR>
map <C-x> :tabn<CR>
map <C-c> :tabnew<CR>

" save/quit
command Dw :w !doas dd of=%
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

" autoindent when pasting
nnoremap p p=`]

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
