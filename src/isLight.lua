--[=[
	Checks if the given color is considered to be "light." That is, a color that
	contrasts well with dark colors.

	@function isLight
	@within Hue
	@param color Color3 -- The color to check
	@return boolean -- Returns true if `color` is perceived to be light, false otherwise
]=]
local function isLight(color: Color3): boolean
	local r = color.R * 255
	local g = color.G * 255
	local b = color.B * 255

	-- Source: http://alienryderflex.com/hsp.html
	local perceived = math.sqrt((0.299 * r ^ 2) + (0.587 * g ^ 2) + (0.114 * b ^ 2))

	-- If the perceived brightness is greater than half the max value then it is
	-- considered a light color.
	return perceived > (255 / 2)
end

return isLight
