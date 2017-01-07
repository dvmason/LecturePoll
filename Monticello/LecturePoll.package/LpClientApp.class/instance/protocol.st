accessing
protocol
	^ (self at: #protocol) ifNil: [ self protocol: ServerProtocol ]