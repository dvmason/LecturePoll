message sends
prompt
	self isLoggedIn ifTrue: [
		ws send: '"error"'
	] ifFalse: [
		ws send: '{"login":false}'
	]