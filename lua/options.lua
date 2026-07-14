require "nvchad.options"

-- add yours here!
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.clipboard = "unnamedplus"
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- clang options
vim.diagnostic.config({
  virtual_text = false, -- disable inline messages
  underline = true,
  signs = true,
  severity_sort = true,
})

-- fold
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "1"

