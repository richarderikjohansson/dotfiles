return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-dap-python",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			local dap_python = require("dap-python")

			require("dapui").setup({})
			require("nvim-dap-virtual-text").setup({
				commented = true, -- Show virtual text alongside comment
			})

			local python_install_path = vim.fn.exepath("python")
			dap_python.setup(python_install_path)

			vim.fn.sign_define("DapBreakpoint", {
				text = "",
				texthl = "DiagnosticSignError",
				linehl = "",
				numhl = "",
			})

			vim.fn.sign_define("DapBreakpointRejected", {
				text = "", -- or "❌"
				texthl = "DiagnosticSignError",
				linehl = "",
				numhl = "",
			})

			vim.fn.sign_define("DapStopped", {
				text = "", -- or "→"
				texthl = "DiagnosticSignWarn",
				linehl = "Visual",
				numhl = "DiagnosticSignWarn",
			})

			-- Automatically open/close DAP UI
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			local opts = { noremap = true, silent = true }

			-- Toggle breakpoint
			opts.desc = "Toggle breakpoint"
			vim.keymap.set("n", "<leader>db", function()
				dap.toggle_breakpoint()
			end, opts)

			-- Continue / Start
			opts.desc = "Start DAP"
			vim.keymap.set("n", "<leader>dc", function()
				dap.continue()
			end, opts)

			-- Step Over
			opts.desc = "Step over"
			vim.keymap.set("n", "<leader>do", function()
				dap.step_over()
			end, opts)

			-- Step Into
			opts.desc = "Step into"
			vim.keymap.set("n", "<leader>di", function()
				dap.step_into()
			end, opts)

			-- Step Out
			opts.desc = "Step out"
			vim.keymap.set("n", "<leader>dO", function()
				dap.step_out()
			end, opts)
			-- Keymap to terminate debugging
			opts.desc = "Terminate DAP"
			vim.keymap.set("n", "<leader>dq", function()
				require("dap").terminate()
			end, opts)

			-- Toggle DAP UI
			opts.desc = "Toggle debugger DAP UI"
			vim.keymap.set("n", "<leader>du", function()
				dapui.toggle()
			end, opts)
		end,
	},
}
