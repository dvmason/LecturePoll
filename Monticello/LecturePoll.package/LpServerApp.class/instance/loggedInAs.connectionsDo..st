connecting
loggedInAs: aString connectionsDo: aBlock
	self allConnectionsDo: [ : connection |
		connection user = aString ifTrue: [ aBlock value: connection ]
	]