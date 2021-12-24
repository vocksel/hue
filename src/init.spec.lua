return function()
	it("requires the API without error", function()
		expect(function()
			require(script.Parent)
		end).to.never.throw()
	end)
end
