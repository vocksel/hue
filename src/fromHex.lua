local function fromHex(hex: string): Color3
	hex = hex:gsub("#", "")

	local r, g, b

	if hex:len() == 3 then
		-- Inspired by:
		--  https://gist.github.com/fernandohenriques/12661bf250c8c2d8047188222cab7e28
		r = tonumber("0x" .. hex:sub(1, 1)) * 17
		g = tonumber("0x" .. hex:sub(2, 2)) * 17
		b = tonumber("0x" .. hex:sub(3, 3)) * 17
	else
		r = tonumber("0x" .. hex:sub(1, 2))
		g = tonumber("0x" .. hex:sub(3, 4))
		b = tonumber("0x" .. hex:sub(5, 6))
	end

	return Color3.fromRGB(r, g, b)
end

return fromHex
