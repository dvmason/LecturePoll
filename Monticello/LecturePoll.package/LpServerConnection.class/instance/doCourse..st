message performing
doCourse: aCourse
	self checkLoggedIn.
	server registrationsFor: self andCallback: [ : courses | | match |
		courses ifNotNil: [
			courses do: [ : each |
				(each at: #course) = aCourse ifTrue: [
					self isAdmin: (each at: #isAdmin).
					self course: aCourse.
					match := each ]]].
		self send: #course with: match
	]