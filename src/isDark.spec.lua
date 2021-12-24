return function()
	local isDark = require(script.Parent.isDark)

	local lightColors = {
		Color3.fromRGB(255, 255, 255),
		Color3.fromRGB(228, 214, 167),
		Color3.fromRGB(80, 162, 167),
		Color3.fromRGB(15, 255, 149),
	}

	local darkColors = {
		Color3.fromRGB(0, 0, 0),
		Color3.fromRGB(28, 17, 10),
		Color3.fromRGB(155, 41, 21),
		Color3.fromRGB(5, 47, 95),
	}

	it("should return false for light colors", function()
		for _, color in ipairs(lightColors) do
			expect(isDark(color)).to.equal(false)
		end
	end)

	it("should return true for dark colors", function()
		for _, color in ipairs(darkColors) do
			expect(isDark(color)).to.equal(true)
		end
	end)
end
