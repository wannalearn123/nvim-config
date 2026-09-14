return {
	"nvim-lua/plenary.nvim",
	config = function()
		vim.api.nvim_create_user_command("Pydoc", function(opts)
			local name = table.concat(opts.fargs, " ")
			if name == "" then
				vim.notify("Usage: :Pydoc <module_or_function>", vim.log.levels.WARN)
				return
			end

			local output = vim.fn.system("pydoc3 " .. vim.fn.shellescape(name))
			if vim.v.shell_error ~= 0 then
				vim.notify("pydoc3: " .. vim.trim(output), vim.log.levels.ERROR)
				return
			end

			-- Open a scratch buffer in a horizontal split
			vim.cmd("botright new")
			local buf = vim.api.nvim_get_current_buf()
			vim.bo[buf].buftype = "nofile"
			vim.bo[buf].bufhidden = "wipe"
			vim.bo[buf].modifiable = true
			vim.bo[buf].filetype = "pydoc"
			vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(output, "\n"))
			vim.bo[buf].modifiable = false
			vim.api.nvim_buf_set_name(buf, "pydoc://" .. name)

			-- Keymaps for the pydoc buffer
			vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = buf, silent = true, desc = "Close pydoc" })
		end, { nargs = "+", complete = "custom,pydoc3#complete" })
	end,
}
