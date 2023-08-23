require("custom.options")

vim.defer_fn(function()
	-- load nvdash on startup
	-- only if nvim was opened without a file
	if #vim.fn.argv() == 0 then
		require("nvchad.nvdash").open()
	end

	local new_cmd = vim.api.nvim_create_user_command

	-- Command to toggle NvDash
	new_cmd("Nvdash", function()
		if vim.g.nvdash_displayed then
			vim.cmd("bd")
		else
			require("nvchad.nvdash").open()
		end
	end, {})
end, 0)
