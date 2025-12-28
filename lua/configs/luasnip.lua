local luasnip = require("luasnip")

-- Load your custom Lua snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })

-- Optional: enable snippet history and update on text change
luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
})

-- Keymaps for expanding/jumping snippets
local map = vim.keymap.set
map({"i", "s"}, "<C-k>", function()
  if luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  end
end, { silent = true })

map({"i", "s"}, "<C-j>", function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end, { silent = true })

