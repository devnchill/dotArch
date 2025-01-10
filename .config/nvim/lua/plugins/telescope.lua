local keys = {
	-- Predefined commands with no custom functions
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Ripgrep" }, -- Searching content in files
	{
		"<leader>ff",
		"<cmd>Telescope find_files<cr>",
		desc = "Find Files in Current Directory",
	},
	{
		"<leader>fF",
		"<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fs.root(0, { '.git', 'package.json' }) })<cr>",
		desc = "Find Files in Project Root",
	},
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" }, -- Switch between buffers
	{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Old files" }, -- Search recent files
	{ "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "Commits" }, -- Git commit search
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" }, -- Help tags search
	{ "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Grep String" },
}

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
	})
end

-- Return the Telescope configuration
return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = keys,
	config = config,
}
