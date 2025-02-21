return {

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catp = require("catppuccin")
      catp.setup({
        transparent_background = true,
        dim_inactive = {
          enabled = true,   -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.3, -- percentage of the shade to apply to the inactive window
        },
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
}
