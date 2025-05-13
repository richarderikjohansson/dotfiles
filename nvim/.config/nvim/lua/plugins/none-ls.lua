return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"jayp0521/mason-null-ls.nvim",
	},

	opts = function(_, config)
		local null_ls = require("null-ls")
		local sources = {
			null_ls.builtins.formatting.stylua,
			require("none-ls.formatting.ruff").with({
				extra_args = { "extend_select", "I" },
			}),
			require("none-ls.formatting.ruff_format"),
			null_ls.builtins.diagnostics.mypy.with({
				extra_args = { "--ignore-missing-imports" },
			}),
		}
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		config.sources = sources
		return config
	end,
}
