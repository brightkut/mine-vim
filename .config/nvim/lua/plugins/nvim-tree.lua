-- File Explorer / Tree
return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons', -- Fancy icon support
  },
  opts = {
    -- change folder arrow icons
    renderer = {
      indent_markers = {
        enable = true,
      },
      icons = {
        glyphs = {
          folder = {
            arrow_closed = "", -- arrow when folder is closed
            arrow_open = "", -- arrow when folder is open
          },
        },
      },
    },
    actions = {
      open_file = {
        window_picker = {
          enable = false
        },
      }
    },
  },
  config = function (_, opts)
    -- Recommended settings to disable default netrw file explorer
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- Apply Tokyonight green color to the arrow icons
    vim.api.nvim_set_hl(0, "NvimTreeIndentMarkerArrow", { fg = "#9ECE6A" }) -- Tokyonight green color

    -- Assign highlight groups to arrow icons
    -- vim.cmd([[
    --   autocmd FileType NvimTree highlight NvimTreeIndentMarkerArrow guifg=#9ECE6A
    --   ]])
    require("nvim-tree").setup(opts)
  end
}

