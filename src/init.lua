--[=[
	@class Hue

	An assortment of functions for dealing with Color3 values.
]=]

local api = {
	colors = require(script.colors),
	fromHex = require(script.fromHex),
	grayscale = require(script.grayscale),
	isLight = require(script.isLight),
	isDark = require(script.isDark),
	negate = require(script.negate),
}

return api
