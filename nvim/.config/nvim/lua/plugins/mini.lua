return {
	{
		"echasnovski/mini.statusline",
		version = "*",
		config = function()
			require("mini.statusline").setup()
		end,
	},
	{
		"echasnovski/mini.ai",
		event = "VeryLazy",
		opts = function()
			return {
				custom_textobjects = {
					D = function()
						local from = { line = vim.fn.search([[\v^\s*("""|''')]], "bn"), col = 1 }
						local to = { line = vim.fn.search([[\v^\s*("""|''')]], "n"), col = vim.fn.col("$") }
						if from.line == 0 or to.line == 0 then
							return nil
						end
						return { from = from, to = to }
					end,
				},
			}
		end,
	},
}
