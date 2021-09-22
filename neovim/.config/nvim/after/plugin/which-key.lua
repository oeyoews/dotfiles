require("which-key").setup {
	operators = { gc = "Comments" },
	spelling = {
	enabled = true, -- in normal, enabling this will show WhichKey when pressing z= to select spelling suggestions
	suggestions = 10, --how many suggestions should be shown in the list?
	},
layout = {
	height = { min = 4, max = 25 }, -- min and max height of the columns
	width = { min = 20, max = 50 }, -- min and max width of the columns
	spacing = 3, -- spacing between columns
	align = "center"  -- align columns left, center or right
	},
window = {
	border = "single", -- none, single, double, shadow
	position = "bottom", -- bottom, top
	margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
	padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
	},
icons = {
	breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
	separator = "➜", -- symbol used between a key and it's label
	group = "+", -- symbol prepended to a group
	},
presets = {
	operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
	motions = true, -- adds help for motions
	text_objects = true, -- help for text objects triggered after entering an operator
	windows = true, -- default bindings on <c-w>
	nav = true, -- misc bindings to work with windows
	z = true, -- bindings for folds, spelling and others prefixed with z
	g = true, -- bindings for prefixed with g
	},
opts = {
	mode = "n", -- NORMAL mode
	-- prefix: use "<leader>f" for example for mapping everything related to finding files
	-- the prefix is prepended to every mapping part of `mappings`
	prefix = "nil",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
	}
}