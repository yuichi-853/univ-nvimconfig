return {
	"pedro757/emmet",
	config = function()
		local lspconfig = require("lspconfig")
		local configs = require("lspconfig.configs")

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		if not configs.ls_emmet then
			configs.ls_emmet = {
				default_config = {
					cmd = { "ls_emmet", "--stdio" },
					filetypes = {
						"html",
						"css",
						"scss",
						"javascriptreact",
						"typescriptreact",
						"haml",
						"xml",
						"xsl",
						"pug",
						"slim",
						"sass",
						"stylus",
						"less",
						"sss",
						"hbs",
						"handlebars",
						"template",
					},
					root_dir = function(fname)
						return vim.loop.cwd()
					end,
					settings = {},
				},
			}
		end

		lspconfig.ls_emmet.setup({ capabilities = capabilities })
	end,
}
