return function()
	local negate = require(script.Parent.negate)

	it("should return a new Color3", function()
		local color = Color3.fromRGB(255, 255, 255)
		expect(negate(color)).to.never.equal(color)
	end)

	it("should invert the color values", function()
		local color = Color3.fromRGB(200, 100, 0)
		local negated = negate(color)

		expect(negated.R).to.be.near(1 - color.R)
		expect(negated.G).to.be.near(1 - color.G)
		expect(negated.B).to.be.near(1 - color.B)
	end)
end
