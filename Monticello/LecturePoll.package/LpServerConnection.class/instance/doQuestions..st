message performing
doQuestions: ignored
	self checkLoggedIn.
	server openQuestionsFor: self course andCallback: [ : questions |
		questions isEmptyOrNil ifFalse:  [
			questions size = 1 ifTrue: [
				self send: #question with: questions first
			] ifFalse: [
				self send: #questions with: questions]]
	]