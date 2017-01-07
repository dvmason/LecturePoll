testing
isLoggedInto: aString
	^ self isLoggedIn and: [self course = aString]