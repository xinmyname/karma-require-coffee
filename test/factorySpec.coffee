define ['convertFactory'], (ConvertFactory) ->
	describe 'A ConvertFactory', ->
		it 'creates a converter', ->
			factory = new ConvertFactory()
			convert = factory.createConverter()
			expect(convert).not.toBe(null)
		it 'can convert a number from an inner class', ->
			factory = new ConvertFactory()
			convert = factory.createConverter()
			result = convert.numberToString 42
			expect(result).toEqual "2.625"
