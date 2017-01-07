as yet unclassified
createDB
	settings create: {#key->'VARCHAR(20) PRIMARY KEY'.
				#value->'VARCHAR(100)'}.
	settings createKey.
	courses create: {#name->'VARCHAR(20) PRIMARY KEY'.
				#description->'VARCHAR(50)'.
				#webpage->'VARCHAR(100)'.
				#open->'BOOLEAN'}.
	courses createKey.
	people create: {#email->'VARCHAR(50) PRIMARY KEY'.
				#name->'VARCHAR(50)'}.
	people createKey.
	cookies create: {#email->'VARCHAR(50) PRIMARY KEY'.
				#cookie->'VARCHAR(36)'. " enough for GUID "
				#referenced->'DATE DEFAULT (datetime(''now'',''localtime''))'}.
	cookies createKey.
	registrations create: {#course->'VARCHAR(20)'.
				#email->'VARCHAR(50)'.
				#isAdmin->'BOOLEAN'}.
	registrations createKey.
	questions create: {#course->'VARCHAR(20)'.
				#name->'VARCHAR(10)'.
				#description->'VARCHAR(255)'.
				#type->'VARCHAR(10)'.
				#status->'INTEGER'}.
	questions createKey.
	answers create: {#course->'VARCHAR(20)'.
				#name->'VARCHAR(10)'.
				#email->'VARCHAR(50)'.
				#answer->'VARCHAR(50)'}.
	answers createKey