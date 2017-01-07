accessing
email: anObject
	email := anObject.
	self isPrivateDevice ifTrue: [self at: #email put: anObject].
