local function negate(color: Color3): Color3
	return Color3.new(1 - color.R, 1 - color.G, 1 - color.B)
end

return negate
