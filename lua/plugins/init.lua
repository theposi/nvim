return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	-- LazyGit
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
		}
	},

	-- Header 
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

	-- Dashboard 
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

	-- Animate 
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = function(_, opts)
			opts.scroll = {
				enable = false,
			}
		end,
	},
}
