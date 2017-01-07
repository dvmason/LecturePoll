mail
mailTestMessage
	smtpTransport
		sendMail: {
			#from -> 'dmason@ryerson.ca'.
			#to -> 'dmason-sb-test@scs.ryerson.ca'.
			#subject -> 'Hello'.
			#text -> 'world'.
			} asDictionary
		callback: [: err : info |
			err ifNotNil: [ err signal ].
			console dir: info
		].
