accessing
email
	^ email ifNil: [ email := self at: #email ]