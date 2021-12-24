local isLight = require(script.Parent.isLight)

local function isDark(color: Color3): boolean
	return not isLight(color)
end

return isDark
