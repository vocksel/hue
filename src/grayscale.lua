local function grayscale(color: Color3): Color3
	local _h, _s, v = Color3.toHSV(color)
	return Color3.fromHSV(0, 0, v)
end

return grayscale
