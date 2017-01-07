message performing
doLogin: ignored
	self changePageTo: #login.
	emailField value: self email.
	cookie value: self guid.
	submitLogin addEventListener: #click block: [
		self sendLogin: true
	].
	emailField addEventListener: #change block: [
		self sendLogin: false
	].
	cookie addEventListener: #change block: [
		self sendLogin: false
	]