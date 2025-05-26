-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Escape key
map("i", "hj", "<Esc>", { noremap = true })
-- Overide Tab key
map("n", "<leader>sh", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>sv", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>sx", "<C-W>c", { desc = "Delete Window", remap = true })
