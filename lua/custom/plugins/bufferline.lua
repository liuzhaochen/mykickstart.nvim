return{ 
  	'akinsho/bufferline.nvim',  
	dependencies = {'nvim-tree/nvim-web-devicons'}, 
	init = function() 
		vim.opt.termguicolors = true
	end,
    config = function() 
		vim.keymap.set('n', '<C-h>', ":bp<cr>", { desc = '[S]earch [H]elp' })
		vim.keymap.set('n', '<C-l>', ":bn<cr>", { desc = '[S]earch [H]elp' })
		require("bufferline").setup {
			options = { 
				diagnostics = "nvim_lsp", 
				offsets = {
					{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator= true,
					text_align = "left"
					}
				}
			}
		}
	end,
}
 