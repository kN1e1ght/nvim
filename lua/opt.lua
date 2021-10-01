local opt = {

	ignorecase=true,
smartcase=true,




number=true,
relativenumber=true,
scrolloff=5}
for key, value in pairs(opt) do
	vim.o[key] = value
end
