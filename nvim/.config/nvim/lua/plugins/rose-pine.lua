return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "main",
			dim_inactive_windows = false,
			enable = {
				legacy_highlights = false,
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
				WinSeparator = { fg = "#2a283e" },
				EndOfBuffer = { fg = "base" },
				CursorLineSign = { fg = "e0def4" },
				String = { fg = "#a6e3a1" },
				Comment = { italic = false },

				-- Python
				["@keyword.operator.python"] = { fg = "pine", bold = false },
				["@string.documentation.python"] = { fg = "#908caa", italic = true },
				["@variable.python"] = { italic = false },
				["@variable.builtin.python"] = { fg = "#f6c177", italic = false },
				["@variable.parameter.python"] = { fg = "love", italic = false },

				--- Bash
				["@variable.bash"] = { italic = false },
				["@variable.parameter.bash"] = { fg = "iris", italic = false },
				["@variable.builtin.bash"] = { fg = "love", italic = false },

				--- Lua
				["@lsp.type.property.lua"] = { fg = "foam", bold = false, italic = false },
				["@property.lua"] = { fg = "foam", bold = false, italic = false },
			},
			styles = {
				transparency = false,
			},
		})
		vim.cmd("colorscheme rose-pine")
		vim.defer_fn(function()
			vim.api.nvim_set_hl(0, "MatchParen", { fg = "#9ccfd8", bg = "#6e6a86" })
			vim.api.nvim_set_hl(0, "Cursor", { fg= "#9ccfd8", bg= "#6e6a86" })
		end, 0)
	end,
}
