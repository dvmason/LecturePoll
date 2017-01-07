process actions
doRegistration: array
	| course email |
	course := array removeFirst.
	email := array removeFirst.
	registrations upsert: {#course->course. #email->email. #isAdmin->(array first ifNotNil: [: admin |
		admin asLowercase = 'admin'] ifNil: [false])}