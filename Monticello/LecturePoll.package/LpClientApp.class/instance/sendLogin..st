sending
sendLogin: force
	| em co |
	em := emailField value.
	em ~= '' ifTrue: [
		co := cookie value.
		(force or: [co ~= '']) ifTrue: [
			self send: #login with: { #email->em. #cookie->co } asDictionary
	]]