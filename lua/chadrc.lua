-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "nightfox",
	transparency = true,
	changed_themes = {
		nightfox = {
			base_30 = {
				grey_fg = "#f0e6ff",
			},
		},
	},

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
  statusline = { theme = 'vscode_colored' }
}

return M
