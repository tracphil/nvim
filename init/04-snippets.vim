" Snippets
let g:_author='Tracy Phillips'
let g:_snips_author='Tracy Phillips'
let g:_snips_author_mantoso='Tracy Phillips'

let g:_email='tracphil@gmail.com'
let g:_snips_email='tracy.phillips@mantoso.com'
let g:_snips_email_mantoso='tracy.phillips@mantoso.com'

let g:_snips_github='https://github.com/reavon'
let g:_github='https://github.com/reavon'

if strridx(getcwd(), "mantoso") > 0
   let g:_snips_company='Mantoso, Inc.'
   let g:_company='Mantoso, Inc.'
elseif strridx(getcwd(), "salt-formulas") > 0
   let g:_snips_company='Mantoso, Inc.'
   let g:_company='Mantoso, Inc.'
elseif strridx(getcwd(), "mantoso") > 0
   let g:_snips_company='Mantoso, Inc.'
   let g:_company='Mantoso, Inc.'
else
   let g:_snips_company=g:_snips_author
   let g:_company=g:_snips_author
endif

set rtp+=,~/.config/neovim/snippets'
