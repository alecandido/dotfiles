local api = vim.api
local optl = vim.opt_local

local function indent(n)
	optl.expandtab = true
	optl.tabstop = n
	optl.shiftwidth = n
	optl.softtabstop = n
	optl.autoindent = true
end

local function wrap()
	optl.textwidth = 80
	optl.formatoptions:append("t")
end

return {
	indent = indent,
	wrap = wrap,
}
