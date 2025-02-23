return {
  {
    "tpope/vim-fugitive"
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  },
-- Or with configuration
{
--  'projekt0n/github-nvim-theme',
--  name = 'github-theme',
--  lazy = false, -- make sure we load this during startup if it is your main colorscheme
--  priority = 1000, -- make sure to load this before all the other start plugins
--  config = function()
--    require('github-theme').setup({
--      -- ...
--    })
--
--    vim.cmd('colorscheme github_dark_dimmed')
--  end,
}
}
