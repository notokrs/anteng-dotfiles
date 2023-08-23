local present, notify = pcall(require, "notify")

if not present then
	return
end

notify.setup({
	timeout = 1500,
	stages = "slide",
})
