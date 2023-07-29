-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

vim.keymap.set("i", "<C-h>", "<left>", { noremap = true, desc = "Left" })
vim.keymap.set("i", "<C-l>", "<right>", { noremap = true, desc = "right" })

vim.keymap.set("n", "<leader>wv", "<C-w>v", { noremap = true, desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wh", "<C-w>s", { noremap = true, desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { noremap = true, desc = "Make splits equal size" })
