return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter').setup {

			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"rust",
				"zig",
				"help",
				"python",
			},

			auto_install = true,

			sync_install = false,

			highlight = {
				enable =  true,
				additional_vim_regex_highlighting = false,
			}
		}
	end,
}
