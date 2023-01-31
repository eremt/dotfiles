-- syntax highlighting
-- syntax on default
vim.cmd('colorscheme boring')

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- center cursor vertically
vim.opt.scrolloff = 25

-- disable swapfile
vim.opt.swapfile = false

-- set leader to <space>
vim.g.mapleader = " "

-- switch between windows and tabs
vim.keymap.set('n', '<leader><Tab>', 'g<Tab>', { noremap = true })
vim.keymap.set('n', '<leader>w', '<C-w><C-w>', { noremap = true })

-- enter command mode
vim.keymap.set('', '<leader>;', ':', { noremap = true })
-- search replace inner word or visual selection
vim.keymap.set('n', '<leader>/', 'yiw:%s/<C-r>"/<C-r>"', { noremap = true })
vim.keymap.set('v', '<leader>/', 'y:%s/<C-r>"/<C-r>"', { noremap = true })

-- resize vertical splits
vim.keymap.set('', '<leader>=', ':exe "vertical resize +10"<CR>', { noremap = true })
vim.keymap.set('', '<leader>-', ':exe "vertical resize -10"<CR>', { noremap = true })

-- disable yank when pasting in visual mode
vim.keymap.set('v', 'p', '"_dP', { noremap = true })

-- FZF
vim.cmd('set rtp+=~/.local/share/nvim/site/pack/plugins/start/fzf')
vim.keymap.set('n', '<c-p>', ':FZF<CR>', { noremap = true })

-- neovim only
require('user/lsp')
