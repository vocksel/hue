return function()
	local fromHex = require(script.Parent.fromHex)

	it("should return a Color3", function()
		expect(typeof(fromHex("#f0f0f0"))).to.equal("Color3")
	end)

	it("should work with a string", function()
		local color = fromHex("#ff00ff")

		expect(color.R * 255).to.equal(255)
		expect(color.G * 255).to.equal(0)
		expect(color.B * 255).to.equal(255)
	end)

	it("should work without a hash symbol", function()
		local color = fromHex("ff00ff")

		expect(color.R * 255).to.equal(255)
		expect(color.G * 255).to.equal(0)
		expect(color.B * 255).to.equal(255)
	end)

	it("should work with short hex codes", function()
		local color = fromHex("#fff")

		expect(color.R * 255).to.equal(255)
		expect(color.G * 255).to.equal(255)
		expect(color.B * 255).to.equal(255)
	end)
end
