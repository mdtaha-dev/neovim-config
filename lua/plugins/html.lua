return {
  -- Auto close & rename HTML tags
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- Emmet
  {
    "mattn/emmet-vim",
    init = function()
      vim.g.user_emmet_leader_key = "<C-e>"
      vim.g.user_emmet_install_global = 0
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "html", "css", "javascript" },
        command = "EmmetInstall",
      })
    end,
  },

  -- Prettier formatter for HTML
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        css = { "prettier" },
      },
    },
  },

  -- Treesitter: make sure html/css are installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "html", "css", "javascript" })
    end,
  },
}
