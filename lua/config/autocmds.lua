-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    local col = vim.fn.col(".")
    if col > 1 then
      vim.fn.cursor(vim.fn.line("."), col + 1)
    end
  end,
})

vim.keymap.set("i", "<C-BS>", "<C-w>")
