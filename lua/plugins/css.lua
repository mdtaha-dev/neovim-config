return {
  -- CSS LSP (autocomplete, errors, hover docs)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
      },
    },
  },

  -- Color preview (shows actual color next to hex/rgb)
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        css = true,
      },
    },
  },

  -- Prettier formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { "prettier" },
        scss = { "prettier" },
      },
    },
  },
}
