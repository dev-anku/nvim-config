function ColorMyPencils(color)
	color = "rose-pine" or "habamax"
	vim.cmd.colorscheme(color)

	TransparentBackground()
end

function TransparentBackground()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.api.nvim_create_autocmd("User", {
	pattern = "LazyDone",
	callback = function()
		ColorMyPencils()
	end,
})

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = false,
				styles = {
					italic = false,
				},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
