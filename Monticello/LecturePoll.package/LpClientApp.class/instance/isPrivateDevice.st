accessing
isPrivateDevice
	^ (self at: #isPrivateDevice) ifNil: [ self at: #isPrivateDevice put: (window confirm: 'Is this a private device (so I can securely save your email/password) ?') ]