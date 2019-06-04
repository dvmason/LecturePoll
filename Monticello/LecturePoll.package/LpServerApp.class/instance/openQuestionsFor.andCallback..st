database accessing
openQuestionsFor: course andCallback: aBlock
	questions select: #(name description status type) with: {#course->course. #status->QuestionOpen  } callback: [ : err : rows |
		err ifNotNil: [
			console log: 'error in openQuesttionsFor:andCallback:'.
			console log: err.
			aBlock value: nil
		] ifNil:  [
			aBlock value: rows
		]
	]