initialization-release
startMailer
	settings selectAll: #(emailService emailUser emailPass)
		callback: [ : emailService : emailUser : emailPass | | options |
			options := {
				#service->emailService.
				#auth->{
					#user->emailUser.
					#pass->emailPass
				} asDictionary
			} asDictionary.
			smtpTransport := NodeMailer createTransport: options
		]