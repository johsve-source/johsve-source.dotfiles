-- Plugins: Colorschemes
-- https://github.com/rafi/vim-config

return {

	-- Use last-used colorscheme
	{
		'rafi/theme-loader.nvim',
		lazy = false,
		priority = 99,
		opts = { initial_colorscheme = 'neohybrid' },
	},

	{ 'rafi/neo-hybrid.vim', priority = 99, lazy = false },
	{ 'folke/tokyonight.nvim', lazy = false, priority = 1000, opts = {}, },
	{ 'rafi/awesome-vim-colorschemes', lazy = false },

}
