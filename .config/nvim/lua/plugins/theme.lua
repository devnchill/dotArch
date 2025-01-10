return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "night",
		on_colors = function(colors)
			colors.bg = "#0d1117"
			colors.bg_highlight = "#161b22"
		end,
	},
}
