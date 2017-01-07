initialization-release
ws: aWSConnection
server: anObject
	server := anObject.
	ws := aWSConnection.
	ws on: #ping do: [ console log: 'Got a ping' ].
	ws on: #pong do: [ console log: 'Got a pong' ].
	ws on: #message do: [ : theMessage |
		message = #ping ifFalse: [
			console log: 'message: ',theMessage.
			[self dispatchMessage: (JSON parse: theMessage)] on: Error do: [ : theError |
				console dir: theError.
				error := theError messageText asJSON.
				self isLoggedIn ifTrue: [
					ws send: '"error"'
				] ifFalse: [
					ws send: '"login"'
			]].
			console log: 'end message'
		]
	]