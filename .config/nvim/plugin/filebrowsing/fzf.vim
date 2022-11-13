" fzf.vim
noremap <silent> <space><space>             :Files<CR>
noremap <silent> <space>b                   :Buffers<CR>
noremap <silent> <space>c                   :CocFzfList<CR>
noremap <silent> <space>r                   :Rg<CR>
noremap <silent> <space>t                   :Tags<CR>

noremap <silent> <space>j                   :CocCommand fzf-preview.Jumps<CR>
noremap <silent> <space>ga                  :CocCommand fzf-preview.GitActions<CR>
noremap <silent> <space>gs                  :CocCommand fzf-preview.GitStatus<CR>
noremap <silent> <space>gc                  :CocCommand fzf-preview.Changes<CR>
noremap <silent> <space>tt                  :CocCommand fzf-preview.BufferTags<CR>
noremap <silent> <space>/                   :CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
noremap <silent> <space>*                   :CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
noremap <silent> <space>q                   :CocCommand fzf-preview.QuickFix<CR>
noremap <silent> <space>l                   :CocCommand fzf-preview.LocationList<CR>
noremap <silent> <space>B                   :CocCommand fzf-preview.AllBuffers<CR>
