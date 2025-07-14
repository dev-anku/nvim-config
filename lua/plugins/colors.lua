function ColorMyPencils(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)
end

function TransparentBackground()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.api.nvim_create_autocmd("User", {
	pattern = "LazyDone",
	callback = function()
		ColorMyPencils("tokyonight")
		TransparentBackground()
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
}
