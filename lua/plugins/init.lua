return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- LuaSnip for snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" }, -- load friendly-snippets too
    config = function()
      local luasnip = require("luasnip")

      -- Load friendly-snippets (autocomplete snippets like cin, for, if)
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Load your custom Lua snippets
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })

      -- Snippet settings
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
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  --    "nvim-treesitter/nvim-treesitter",
  --    opts = {
  --            ensure_installed = {
  --                    "vim", "lua", "vimdoc",
  --                    "html", "css"
  --            },
  --    },
  -- },
}

