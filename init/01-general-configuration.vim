" scroll the window so we can always see 10 lines around the cursor
set scrolloff=10

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

set nofoldenable

" disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Commenting blocks of code.
" http://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,ic :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,rc :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" wrapping
set nowrap                       " Soft (without changing text) wrapping.
set linebreak                    " Only wrap on characters in `breakat`

" Search
set hlsearch                   " highlight search
set ignorecase                 " case insensitive searching
set smartcase                  " case sensitive when input is a capital letter
set incsearch                  " show matches while typing
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l

" Ensure correct highlighting for bash files
au BufRead,BufNewFile *bash* let g:is_bash=1
au BufRead,BufNewFile *bash* setf sh

au BufRead,BufNewFile *.sls set filetype=yaml
au BufRead,BufNewFile *inventory* set filetype=dosini
" markdown in jinja templates
au BufRead,BufNewFile *.adoc.j2  set filetype=asciidoc
au BufRead,BufNewFile *.md.j2  set filetype=markdown

if has('multi_byte')
  let &showbreak = '↳ '
else
  let &showbreak = '> '
endif

set cursorline                  " highlight current line

" Let plugins show effects after 500ms, not 4s
set updatetime=500

" Disable mouse click to go to position
set mouse-=a

" We are using vim-airline don't show default status line
set noshowmode

" Terraform config
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

let g:python3_host_prog = '/Users/tracphil/.pyenv/versions/mantoso/bin/python'
