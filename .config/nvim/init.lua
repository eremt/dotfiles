-- syntax highlighting
-- syntax on default
vim.cmd('colorscheme boring')

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- disable swapfile
vim.opt.swapfile = false

-- set leader to <space>
vim.g.mapleader = " "
-- enter command mode
vim.keymap.set('', '<leader>;', ':', { noremap = true })
-- search replace
vim.keymap.set('n', '<leader>/', 'yiw:%s/<C-r>"/', { noremap = true })
vim.keymap.set('v', '<leader>/', 'y:%s/<C-r>"/', { noremap = true })

-- disable yank when pasting in visual mode
vim.keymap.set('v', 'p', '"_dP', { noremap = true })

-- FZF
vim.cmd('set rtp+=~/.local/share/nvim/site/pack/plugins/start/fzf')
vim.keymap.set('n', '<c-p>', ':FZF<CR>', { noremap = true })

-- neovim only
require('user/lsp')
