message performing
doLoggedin: aString
	nameField innerHTML: (aString ifNotNil: [', ',aString] ifNil: [ '' ]).
	self email: emailField value.
	self guid: cookie value.
	self send: #courses with: nil