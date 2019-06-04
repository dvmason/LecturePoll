as yet unclassified
openSQL
	| exists |
	console log: 'Current directory: ',process cwd.
	exists := Filesystem existsSync: file.
	exists ifFalse: [ self newDB ].
	SQLite verbose.
	db := (SQLite instVarNamed: #Database) new: file.
	db serialize.
	settings := NsSQLTable db: db table: 'Settings' keys: #(key).
	courses := NsSQLTable db: db table: 'Courses' keys: #(name).
	people := NsSQLTable db: db table: 'People' keys: #(email).
	cookies := NsSQLTable db: db table: 'Cookies' keys: #(email cookie).
	registrations := NsSQLTable db: db table: 'Registrations' keys: #(course email).
	questions := NsSQLTable db: db table: 'Questions' keys: #(course name status).
	answers := NsSQLTable db: db table: 'Answers' keys: #(course name email answer).
	exists ifFalse: [ self createDB ]