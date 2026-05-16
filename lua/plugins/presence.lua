return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    require("presence"):setup({
      auto_update = true,
      main_image = "neovim",
      neovim_image_text = "Neovim",
      show_time = true,
    })
  end,
}
