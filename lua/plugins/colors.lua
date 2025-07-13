function ColorMyPencils(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)

  TransparentBackground()
end

function TransparentBackground()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

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

			ColorMyPencils()
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
