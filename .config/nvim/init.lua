-- syntax highlighting
-- syntax on default
vim.cmd('colorscheme boring')

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- disable swapfile
vim.opt.swapfile = false

-- disable yank when pasting in visual mode
vim.cmd('vnoremap p "_dP')

-- FZF
vim.cmd('set rtp+=~/.local/share/nvim/site/pack/plugins/start/fzf')
vim.cmd(':noremap <c-p> :FZF<CR>')

-- neovim only
require('user/lsp')
