accessing
host
	^ (self at: #host) ifNil: [ self host: location hostname ]