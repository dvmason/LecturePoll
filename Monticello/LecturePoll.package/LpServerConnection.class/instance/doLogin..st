message performing
doLogin: aDictionary
	aDictionary == false ifTrue: [ user := nil. ^ self prompt ].
	(aDictionary at: #email) ifNotNil: [: email | 
		(aDictionary at: #cookie) ifNotNil: [ :cookie | 
			server verify: email with: cookie callback: [	: rows |
				rows ifNotNil: [ 
					user := email.
					self send: #loggedin with: (rows first at: #name)
				] ifNil: [
					self prompt
			]]
		] ifNil: [
			self makeCookieFor: email
		]
	] ifNil: [
		self prompt
	]