return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "main",
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
        LineNr = { fg = "#403a5c" },
        CursorLineNr = { fg = "#ff5555" },
        VertSplit = { fg = "#403a5c" },
        Cursor = { fg = "muted" },
        WinSeparator = { fg = "#403a5c" },
        EndOfBuffer = {fg="base"},
        CursorLineSign = {fg="e0def4"},
      },
      styles = {
        transparency = true
      }

    })
    vim.cmd("colorscheme rose-pine")
  end
}
