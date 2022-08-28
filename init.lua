--- Core configs
require 'core.options'
require 'core.keys'
require 'core.plugins'

--- Plugin configs
local cfgFiles = io.popen('ls --color=none -1 lua/conf')
if not cfgFiles then
	print('Unable to load config dir!')
else
	for f in cfgFiles:lines() do
		require('conf.'..f:gsub('%.lua$', ''))
	end
	cfgFiles:close()
end

