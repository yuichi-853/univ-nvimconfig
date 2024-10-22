return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"golangci_lint_ls",
				"gopls",
				"html",
				"cssls",
				"ts_ls",
				"eslint",
			},
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.golangci_lint_ls.setup({ capabilities = capabilities })
		lspconfig.gopls.setup({ capabilities = capabilities })
		lspconfig.html.setup({
			filetypes = { "html" }, -- Enable for gotmpl and template
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({ capabilities = capabilities })
		lspconfig.ts_ls.setup({ capabilities = capabilities })
		lspconfig.eslint.setup({ capabilities = capabilities })

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
