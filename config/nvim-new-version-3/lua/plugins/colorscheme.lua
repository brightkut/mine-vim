-- Theme tokyonight
-- return {
--   "tokyonight.nvim",
--   lazy = true,
--   priority = 1000,
--   opts = function()
--     return {
--       transparent = true,
--     }
--   end,
-- }
--
-- Theme github-nvim-theme
-- return {
--   "projekt0n/github-nvim-theme",
--   name = "github-theme",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require("github-theme").setup({
--       -- ...
--     })
--     vim.cmd("colorscheme github_dark_high_contrast")
--   end,
-- }
--
-- Theme moonfly
-- return {
--   "bluz71/vim-moonfly-colors",
--   name = "moonfly",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme moonfly]])
--   end,
-- }
-- Theme vesper
-- return {
--   "datsfilipe/vesper.nvim",
--   name = "vesper",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("vesper").setup({
--       transparent = false, -- Boolean: Sets the background to transparent
--       italics = {
--         comments = true, -- Boolean: Italicizes comments
--         keywords = true, -- Boolean: Italicizes keywords
--         functions = true, -- Boolean: Italicizes functions
--         strings = true, -- Boolean: Italicizes strings
--         variables = true, -- Boolean: Italicizes variables
--       },
--       overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
--       palette_overrides = {},
--     })
--     vim.cmd("colorscheme vesper")
--   end,
-- }
--
-- Theme rose-pine
return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme rose-pine")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
