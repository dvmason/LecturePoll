connecting
loggedInConnectionsDo: aBlock
	self allConnectionsDo: [ : connection |
		connection isLoggedIn ifTrue: [ aBlock value: connection ]
	]