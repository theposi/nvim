return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		}
	},

	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		config = function()
			require("42header").setup {
				default_map = false,
				auto_update = true,
				user = "crizapat",
				mail = "crizapat@student.42madrid.com",
			}
		end,
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				config = {
					header = {
						[[    ___       ___       ___       ___       ___       ___   ]],
						[[   /\__\     /\  \     /\  \     /\__\     /\  \     /\__\  ]],
						[[  /:| _|_   /::\  \   /::\  \   /:/ _/_   _\:\  \   /::L_L_ ]],
						[[ /::|/\__\ /::\:\__\ /:/\:\__\ |::L/\__\ /\/::\__\ /:/L:\__\]],
						[[ \/|::/  / \:\:\/  / \:\/:/  / |::::/  / \::/\/__/ \/_/:/  /]],
						[[   |:/  /   \:\/  /   \::/  /   L;;/__/   \:\__\     /:/  / ]],
						[[   \/__/     \/__/     \/__/               \/__/     \/__/  ]],
						[[ by: theposintech                                           ]],
					}

				}
			}
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
}
