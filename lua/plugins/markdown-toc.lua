return {
	"mzlogin/vim-markdown-toc",
	config = function()
		vim.g.vmt_auto_update_on_save = 1 -- 保存時に自動でTOCを更新
		vim.g.vmt_fence_text = "TOC" -- 生成されたTOCの区切りタグ
		vim.g.vmt_max_level = 2 -- 目次の階層を2に制限
	end,
}
