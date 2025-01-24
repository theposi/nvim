vim.keymap.set("n", "<C-t>", function()
	local options = {
		{
			name = "Format Buffer",
			cmd = function()
				local ok, conform = pcall(require, "conform")

				if ok then
					conform.format { lsp_fallback = true }
				else
					vim.lsp.buf.format()
				end
			end,
			rtxt = "<leader>fm",
		},

		{
			name = "Code Actions",
			cmd = vim.lsp.buf.code_action,
			rtxt = "<leader>ca",
		},

		{ name = "separator" },

		{
			name = "󱐋 Lsp actions",
			hl = "Exblue",
			items = {
				{
					name = "Goto Definition",
					cmd = vim.lsp.buf.definition,
					rtxt = "gd",
				},

				{
					name = "Goto Declaration",
					cmd = vim.lsp.buf.declaration,
					rtxt = "gD",
				},

				{
					name = "Goto Implementation",
					cmd = vim.lsp.buf.implementation,
					rtxt = "gi",
				},

				{ name = "separator" },

				{
					name = "Show signature help",
					cmd = vim.lsp.buf.signature_help,
					rtxt = "<leader>sh",
				},

				{
					name = "Add workspace folder",
					cmd = vim.lsp.buf.add_workspace_folder,
					rtxt = "<leader>wa",
				},

				{
					name = "Remove workspace folder",
					cmd = vim.lsp.buf.remove_workspace_folder,
					rtxt = "<leader>wr",
				},

				{
					name = "Show References",
					cmd = vim.lsp.buf.references,
					rtxt = "gr",
				},
			},
		},

		{ name = "separator" },

		{
			name = "  Color Picker",
			cmd = function()
				require("minty.huefy").open()
			end,
		},
	}

	require("menu").open(options, { border = true })
end, {})
