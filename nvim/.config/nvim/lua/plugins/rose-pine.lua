return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "main",
      dim_inactive_windows = false,
      enable = {
        legacy_highlights = false
      },
      palette = {
        -- Override the builtin palette per variant
        -- moon = {
        --     base = '#18191a',
        --     overlay = '#363738',
        -- },
      },

      highlight_groups = {
        --- Global
        LineNr = { fg = "#403a5c" },
        CursorLineNr = { fg = "#ff5555" },
        VertSplit = { fg = "#403a5c" },
        Cursor = { fg = "muted" },
        WinSeparator = { fg = "#2a283e" },
        EndOfBuffer = { fg = "base" },
        CursorLineSign = { fg = "e0def4" },
        String = { fg = "#a6e3a1" },
        Comment = { italic = false },

        -- Python
        ["@keyword.operator.python"] = { fg = "pine", bold = false },         -- Change color & style
        ["@string.documentation.python"] = { fg = "#908caa", italic = true }, -- Change color & style
        ["@variable.python"] = { italic = false },                            -- Change color & style
        ["@variable.builtin.python"] = { fg = "#f6c177", italic = false },    -- Change color & style
        ["@variable.parameter.python"] = { fg = "love", italic = false },     -- Change color & style

        --- Bash
        ["@variable.bash"] = { italic = false },                        -- Change color & style
        ["@variable.parameter.bash"] = { fg = "iris", italic = false }, -- Change color & style
        ["@variable.builtin.bash"] = { fg = "love", italic = false },   -- Change color & style

        --- Lua
        ["@lsp.type.property.lua"] = { fg = "foam", bold = false, italic = false }, -- Change color & style
        ["@property.lua"] = { fg = "foam", bold = false, italic = false }, -- Change color & style


      },
      styles = {
        transparency = false
      }

    })
    vim.cmd("colorscheme rose-pine")
  end
}
