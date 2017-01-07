message performing
doCourse: aCourse
	course := aCourse.
	courseField innerHTML: (aCourse at: #course).
	self changePageTo: #questions.
	self changeUpLink: [ self send: #courses with: nil ].
	self send: #questions with: true.
