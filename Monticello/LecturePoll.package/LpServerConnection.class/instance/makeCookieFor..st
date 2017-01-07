message sends
makeCookieFor: userEmail
	server makeCookieFor: userEmail.
	self
		message: 'Password has been mailed to ',userEmail;
		send: #login with: 'emailed'.
