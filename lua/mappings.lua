require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- basic mappings
map("n", "a", "ggVG", { noremap = true, silent = true, desc = "Select all" })

-- comment out
map("v", "c", ":s/^/\\/\\//<CR>", { noremap = true, silent = true, desc = "Comment selected lines" })
map("v", "c", ":s/^\\/\\/ //<CR>", { noremap = true, silent = true, desc = "Uncomment selected lines" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- goto related mapping
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

-- diagnostics related mappings
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "<leader>x", vim.diagnostic.setloclist, { desc = "Diagnostics list" })

