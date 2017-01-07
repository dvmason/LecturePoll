message performing
dispatchMessage: aDictionary
	console dir: aDictionary.
	errorArea innerHTML: ''.
	messageArea innerHTML: ''.
	aDictionary associationsDo: [ : assoc |
		^ self perform: ('do',assoc key capitalized,':') asSymbol with: assoc value
	]