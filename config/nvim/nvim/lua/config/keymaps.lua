-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Override Telescope key
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope find files" })

-- Overide Tab key
vim.keymap.set("n", "<leader>sh", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>sv", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>sx", "<C-W>c", { desc = "Delete Window", remap = true })
LazyVim.ui.maximize():map("<leader>sm")
