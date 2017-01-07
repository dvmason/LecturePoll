message performing
doCourses: ignored
	self checkLoggedIn.
	self course: nil.
	server registrationsFor: self andCallback: [ : courses |
		courses isEmptyOrNil ifFalse:  [
			courses size = 1 ifTrue: [
				self send: #course with: courses first
			] ifFalse: [
				self send: #courses with: courses]]
	]