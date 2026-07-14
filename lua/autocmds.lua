require "nvchad.autocmds"

vim.o.updatetime = 500

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      border = "rounded",
      source = "always",
    })
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    vim.schedule(function()
      vim.cmd("silent! normal! zx")
    end)
  end,
})

