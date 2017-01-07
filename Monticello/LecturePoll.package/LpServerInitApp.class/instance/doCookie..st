process actions
doCookie: array
	| email |
	email := array removeFirst.
	cookies upsert: {#email->email.#cookie->array first}