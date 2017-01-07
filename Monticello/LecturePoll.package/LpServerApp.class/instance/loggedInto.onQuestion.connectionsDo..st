connecting
loggedInto: aString onQuestion: quest connectionsDo: aBlock
	self loggedInto: aString connectionsDo: [ : connection |
		(connection question = aString) ifTrue: [ aBlock value: connection ]
	]