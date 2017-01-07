accessing
guid
	^ guid ifNil: [ email := self at: #guid ]