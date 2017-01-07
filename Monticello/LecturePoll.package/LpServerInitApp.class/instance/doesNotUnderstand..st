process actions
doesNotUnderstand: aMessage
	console log: (aMessage selector allButLast allButFirst: 2) asLowercase, ' is not a valid command'