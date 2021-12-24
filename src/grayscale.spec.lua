return function()
	local grayscale = require(script.Parent.grayscale)

	it("should only retain the brightness of the given color", function()
		local color = Color3.fromRGB(205, 118, 114)
		local newColor = grayscale(color)
		local h, s, v = Color3.toHSV(newColor)

		expect(h).to.equal(0)
		expect(s).to.equal(0)
		expect(v).to.never.equal(0)
	end)
end
