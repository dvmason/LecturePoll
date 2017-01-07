message performing
doChat: string
	self checkLoggedIn.
	server loggedInConnectionsDo: [ :connection | connection send: #chat with: string ]