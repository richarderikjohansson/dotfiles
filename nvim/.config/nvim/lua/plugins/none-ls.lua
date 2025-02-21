return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "jayp0521/mason-null-ls.nvim"
  },

  config = function()
    require("mason-null-ls").setup {
      ensure_installed = {
        "ruff",
        "prettier",
        "shfmt"
      },
      automatic_install = true,
    }

    local null_ls = require "null-ls"
    local sources = {
      require("none-ls.formatting.ruff").with { extra_args = { "extend_select", "I" } },
      require "none-ls.formatting.ruff_format",
      null_ls.builtins.formatting.prettier.with { filetypes = { "json", "yaml", "markdown", "toml" } },
      null_ls.builtins.formatting.shfmt.with { args = { "-i", "4" } },

    }
    --
    --    local null_ls = require("null-ls")

    --    null_ls.setup({
    --      sources = {
    --        null_ls.builtins.formatting.ruff,
    --        null_ls.builtins.formatting.prettier,
    --        null_ls.builtins.diagnostics.erb_lint,
    --        null_ls.builtins.diagnostics.rubocop,
    --        null_ls.builtins.formatting.rubocop,
    --      },
    --    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
