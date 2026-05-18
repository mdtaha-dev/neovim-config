-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select All", noremap = true, silent = true })

-- Copy (ctrl+c)
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard", noremap = true, silent = true })

-- Paste (ctrl+v)
vim.keymap.set("n", "<C-v>", '"+p', { desc = "Paste from clipboard", noremap = true, silent = true })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard", noremap = true, silent = true })

-- Delete without yanking
vim.keymap.set("n", "d", '"_d', { desc = "Delete without yank", noremap = true, silent = true })
vim.keymap.set("v", "d", '"_d', { desc = "Delete without yank", noremap = true, silent = true })
