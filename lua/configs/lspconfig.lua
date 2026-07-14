require("nvchad.configs.lspconfig").defaults()

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = false,
  underline = true,
  signs = true,
  severity_sort = true,
})

local servers = {
  "html",
  "cssls",
  "clangd",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

