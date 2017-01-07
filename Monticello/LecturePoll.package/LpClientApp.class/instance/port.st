accessing
port
	^ (self at: #port) ifNil: [ self port: ServerPort ]