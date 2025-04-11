return {
	"nvimdev/lspsaga.nvim",
	cmd = "Lspsaga",
	opts = {
		finder = {
			keys = {
				toggle_or_open = "<CR>",
			},
		},
	},
	keys = {
		{ "<leader>lr", ":Lspsaga rename<CR>" }, -- 重命名
		{ "<leader>lc", ":Lspsaga code_action<CR>" },
		{ "<leader>ld", ":Lspsaga definition<CR>" }, -- 跳转到定义处
		{ "<leader>lh", ":Lspsaga hover_doc<CR>" }, -- 查看文档
		{ "<leader>lR", ":Lspsaga finder<CR>" }, -- 查看变量引用
		{ "<leader>ln", ":Lspsaga diagnostic_jump_next<CR>" }, -- 跳转到下一个诊断
		{ "<leader>lp", ":Lspsaga diagnostic_jump_prev<CR>" }, -- 跳转到上一个诊断
	},
}
