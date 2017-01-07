message performing
doCourses: courses
	self changePageTo: #courses.
	courseList innerHTML: ''.
	courses do: [ : aCourse | | courseID |
		courseID := aCourse at: #course.
		courseList appendChild: (self button: courseID block: [
			self send: #course with: courseID
		])
	]