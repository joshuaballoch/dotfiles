set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" instead of having an init.lua
lua require('config')
lua require('leap').create_default_mappings()
source ~/.vimrc
" disable cursor shaping (make it square)
"
set guicursor=a:blinkon100
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

