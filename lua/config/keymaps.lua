-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select All", noremap = true, silent = true })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select All", noremap = true, silent = true })
-- Copy (ctrl+c)
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard", noremap = true, silent = true })
-- Paste (ctrl+v)
vim.keymap.set("n", "<C-v>", '"+p', { desc = "Paste from clipboard", noremap = true, silent = true })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard", noremap = true, silent = true })
-- Delete without yanking
vim.keymap.set("n", "d", '"_d', { desc = "Delete without yank", noremap = true, silent = true })
vim.keymap.set("v", "d", '"_d', { desc = "Delete without yank", noremap = true, silent = true })
-- Undo
vim.keymap.set("n", "<C-z>", "u", { desc = "Undo", noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<C-o>u", { desc = "Undo", noremap = true, silent = true })
-- Allow cursor to go past end of line
vim.opt.virtualedit = "onemore"
-- Save and format with Ctrl+S
vim.keymap.set("n", "<C-s>", function()
  require("conform").format({ async = false, lsp_fallback = true })
  vim.cmd("w")
end, { desc = "Save and Format", noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", function()
  require("conform").format({ async = false, lsp_fallback = true })
  vim.cmd("w")
end, { desc = "Save and Format", noremap = true, silent = true })
-- Compile and run C++
vim.keymap.set("n", "<C-r>", function()
  local file = vim.fn.expand("%:p")
  local out = vim.fn.expand("%:p:r")
  -- close any existing terminal buffers first
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].buftype == "terminal" then
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
  vim.cmd("split | terminal g++ " .. file .. " -o " .. out .. " && " .. out)
end, { desc = "Compile and run C++" })
