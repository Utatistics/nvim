local plugins = {
  {
    "mason-org/mason.nvim",
    opts = {
      ensured_installed = {
        "clangd"
      }
    }
  }
}
return plugins
