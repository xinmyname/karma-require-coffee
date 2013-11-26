define ->
	class Convert
		class InnerConvert
			numberToString: (number) ->
				number /= 16.0
				"#{number}"
		createConverter: ->
			new InnerConvert()

