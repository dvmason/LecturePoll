process actions
doPerson: array
	| email |
	email := array removeFirst.
	people upsert: {#email->email.#name->(' ' join: array)}