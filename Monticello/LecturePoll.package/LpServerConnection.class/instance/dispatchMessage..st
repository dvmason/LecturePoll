message performing
dispatchMessage: aDictionary
	aDictionary associationsDo: [ : assoc |
		^ self perform: ('do',assoc key capitalized,':') asSymbol with: assoc value
	].
	self prompt