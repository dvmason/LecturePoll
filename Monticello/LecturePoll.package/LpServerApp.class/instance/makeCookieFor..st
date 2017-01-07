mail
makeCookieFor: userEmail
	self verify: userEmail callback: [: exists | | cookie |
		exists ifTrue: [
			cookie := NsUtility GUID.
			console log: '{"login":"',userEmail,'", "cookie":"',cookie,'"}'.
			cookies insert: { #email->userEmail . #cookie->cookie }
	]]