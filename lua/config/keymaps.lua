-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

vim.keymap.set("i", "<C-h>", "<left>", { noremap = true, desc = "Left" })
vim.keymap.set("i", "<C-l>", "<right>", { noremap = true, desc = "right" })
