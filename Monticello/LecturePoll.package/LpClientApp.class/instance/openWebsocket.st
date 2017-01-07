initialize-release
openWebsocket
	ws := WebSocket new: self protocol,'://',self host,':',self port asString.
	ws addEventListener: #open block: [ : event |
		self login
	].
	ws addEventListener: #message block: [ : message |
		message = #ping ifFalse: [
			console dir: message.
			[self dispatchMessage: (JSON parse: message data)] on: Error do: [ : error |
				console dir: error.
			].
			console log: 'end message'
		]
	].
	ws addEventListener: #error block: [ : error |
		console log: error
	].
	ws addEventListener: #close block: [ : event |
		self close: event
	]