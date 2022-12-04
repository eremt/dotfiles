-- syntax highlighting
-- syntax on default
vim.cmd('colorscheme boring')

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- disable swapfile
vim.opt.swapfile = false

-- neovim only
require('user/lsp')
