function ColorMyPencils(color)
	color = color or "tokyonight"

    require"tokyonight".setup({ style= "moon" })

	vim.cmd.colorscheme(color)
  
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end



ColorMyPencils()
