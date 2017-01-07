as yet unclassified
closeDB
	db ifNotNil: [ db close ].
	console log: 'db loaded'