return {
	{
		"kkoomen/vim-doge",
		build = ":call doge#install()",
		ft = { "python" },
		keys = {
			{
				"<leader>ds",
				function()
					vim.cmd("DogeGenerate")
				end,
				desc = "Generate Docstring",
				mode = "n",
			},
		},
		config = function()
			vim.g.doge_doc_standard_python = "google"
			vim.g.doge_enable_mappings = 1
		end,
	},
}
