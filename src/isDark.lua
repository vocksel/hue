local isLight = require(script.Parent.isLight)

--[=[
	Checks if the given color is considered to be "dark." That is, a color that
	contrasts well with bright colors.

	@function isDark
	@within Hue
	@param color Color3 -- The color to check
	@return boolean -- Returns true if `color` is perceived to be dark, false otherwise
]=]
local function isDark(color: Color3): boolean
	return not isLight(color)
end

return isDark
