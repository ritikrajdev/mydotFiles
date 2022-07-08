require("packer").startup(function(use)
	use "wbthomason/packer.nvim" -- Package Manager for nvim
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } -- Syntax Highlighting for Various Files
	use {
		"williamboman/nvim-lsp-installer", -- TUI Lsp Installer
		"neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client
		"hrsh7th/nvim-cmp", -- Autocompletion plugin
		"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
		"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
		"L3MON4D3/LuaSnip", -- Snippets plugin
	}
	use "tpope/vim-commentary" -- Comments

	use { "lewis6991/gitsigns.nvim", config = function()
		require("gitsigns").setup()
	end } -- Git Signs

	use "jiangmiao/auto-pairs"
end)

require("treesitter")
require("lsp_and_autocompletion")
