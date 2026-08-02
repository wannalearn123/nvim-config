return { 
	'mason-org/mason.nvim',
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()
		
		require("mason-lspconfig").setup({
			automatic_installation = true,
			automatic_enable = true,
			ensure_installed = {
				-- "cssls", 
				-- "bashls",
				"lua_ls",
				-- "vimls",
				-- "dockerls",
"docker_language_server",
				"clangd",
				"rust_analyzer",
				"zls",
				-- "yamlls",
				-- "tsserver",
				-- "jsonls",
				-- "tailwindcss",
				-- "html",
				"pylsp",
				-- "gopls",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed  = {
				-- "prettier",
				"black",
			},
		})

				
	end,
}
