accessing
guid: anObject
	guid := anObject.
	self isPrivateDevice ifTrue: [self at: #guid put: anObject].
