require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Select all using `a` in normal mode
map("n", "a", "ggVG", { noremap = true, silent = true, desc = "Select all" })

-- Comment selected lines with Ctrl + ;
map("v", "c", ":s/^/\\/\\//<CR>", { noremap = true, silent = true, desc = "Comment selected lines" })

-- Uncomment selected lines with Ctrl + ;
map("v", "c", ":s/^\\/\\/ //<CR>", { noremap = true, silent = true, desc = "Uncomment selected lines" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

