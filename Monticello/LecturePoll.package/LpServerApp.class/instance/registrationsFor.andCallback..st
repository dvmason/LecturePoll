database accessing
registrationsFor: connection andCallback: aBlock
	registrations select: #(course isAdmin) with: { #email->connection user } callback: [ : err : rows |
		err ifNotNil: [
			console log: 'error in registrationsFor:andCallback:'.
			console log: err.
			connection prompt
		] ifNil:  [
			aBlock value: rows
		]
	]