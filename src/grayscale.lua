--[=[
	Creates a new color in grayscale. Ever wanted to make a black and white film? Well now you can.

	@function grayscale
	@within Hue
	@param color Color3 -- The color to convert to grayscale
	@return Color3 -- Returns a new grayscale Color3 based off `color`
]=]
local function grayscale(color: Color3): Color3
	local _h, _s, v = Color3.toHSV(color)
	return Color3.fromHSV(0, 0, v)
end

return grayscale
