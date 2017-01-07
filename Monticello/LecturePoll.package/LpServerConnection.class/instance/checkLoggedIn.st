testing
checkLoggedIn.
	self isLoggedIn ifFalse: [ self error: 'not logged in' ]