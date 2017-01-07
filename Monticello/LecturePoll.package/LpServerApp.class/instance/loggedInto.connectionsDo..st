connecting
loggedInto: aString connectionsDo: aBlock
	self allConnectionsDo: [ : connection |
		(connection isLoggedInto: aString) ifTrue: [ aBlock value: connection ]
	]