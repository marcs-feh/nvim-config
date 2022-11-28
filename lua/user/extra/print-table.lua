---Print a table, that's it!
---@param t any
function PrintTable(t)
	if type(t) ~= 'table' then print(t) end
	for k, v in pairs(t) do
		print(k, v)
	end
end
