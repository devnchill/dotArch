-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		local efm = vim.lsp.get_clients({ name = "efm" })
		if vim.tbl_isempty(efm) then
			return
		end
		vim.lsp.buf.format({ name = "efm", async = true })
	end,
})

-- highlight on yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYankGroup", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_yank_group,
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- apply colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "tokyonight",
	callback = function()
		vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#808080" })
		vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#0d1117" })
		vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#58a6ff" })
		vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#58a6ff" })
		vim.api.nvim_set_hl(0, "NvimTreeOpenedFile", { fg = "#c9d1d9" })
		vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#444c56" })
		vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#0d1117", bg = "#0d1117" })
		vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#0d1117" })
	end,
})
