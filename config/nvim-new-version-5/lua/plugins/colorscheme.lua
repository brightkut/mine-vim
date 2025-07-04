-- return {
--   -- "rose-pine/neovim",
--   -- name = "rose-pine",
--   -- "catppuccin/nvim",
--   -- name = "catppuccin",
--   -- "folke/tokyonight.nvim",
--   "tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- vim.cmd("colorscheme catppuccin")
--     -- vim.cmd("colorscheme rose-pine")
--     vim.cmd("colorscheme tokyonight")
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--   end,
-- }

return {
  "tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
  end,
}

-- return {
--   {
--     "folke/tokyonight.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       local bg = "#011628"
--       local bg_dark = "#011423"
--       local bg_highlight = "#143652"
--       local bg_search = "#0A64AC"
--       local bg_visual = "#275378"
--       local fg = "#CBE0F0"
--       local fg_dark = "#B4D0E9"
--       local fg_gutter = "#627E97"
--       local border = "#547998"
--
--       vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
--       require("tokyonight").setup({
--         style = "night",
--         on_colors = function(colors)
--           colors.bg = bg
--           colors.bg_dark = bg_dark
--           colors.bg_float = bg_dark
--           colors.bg_highlight = bg_highlight
--           colors.bg_popup = bg_dark
--           colors.bg_search = bg_search
--           colors.bg_sidebar = bg_dark
--           colors.bg_statusline = bg_dark
--           colors.bg_visual = bg_visual
--           colors.border = border
--           colors.fg = fg
--           colors.fg_dark = fg_dark
--           colors.fg_float = fg
--           colors.fg_gutter = fg_gutter
--           colors.fg_sidebar = fg_dark
--         end,
--       })
--
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }
