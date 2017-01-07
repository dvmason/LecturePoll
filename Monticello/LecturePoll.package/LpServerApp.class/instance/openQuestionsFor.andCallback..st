database accessing
openQuestionsFor: course andCallback: aBlock
	questions select: #(course isAdmin) with: {  } callback: [ : err : rows |
		err ifNotNil: [
			console log: 'error in openQuesttionsFor:andCallback:'.
			console log: err.
			aBlock value: nil
		] ifNil:  [
			aBlock value: rows
		]
	]