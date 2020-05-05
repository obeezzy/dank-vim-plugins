syntax on

set t_Co=256
set cursorline
set number
set hls
set autoindent
set smartindent
set ic
set smartcase
set encoding=utf-8
set ruler
set shiftwidth=4
set softtabstop=4
set expandtab
set showcmd
set wildmenu
filetype indent plugin on

" Toggle highlight search
nnoremap <F3> :set hlsearch!<CR>


" ALE
" Auto-complete for C/C++/ObjC/Qt
let g:clang_library_path='/usr/lib/libclang.so'

" ALE completion
let g:ale_completion_enabled = 1

" Only lint once file is saved, not while text is changing
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0


" onehalfdark
" Set as default theme
colorscheme onehalfdark
let g:airline_theme='onehalfdark'


" NERDTree
" Use Ctrl+N to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

"Close vim if NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
