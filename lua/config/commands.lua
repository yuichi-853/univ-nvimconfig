-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Set up an autocommand for Go template files (template)
vim.api.nvim_create_autocmd("FileType", {
	pattern = "template",
	callback = function()
		vim.bo.commentstring = "{{/* %s */}}"
	end,
})
