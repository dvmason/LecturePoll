initialization-release
startWebsocket
	wsServer := (WebSocket instVarNamed: #Server) new: {#host -> self host. #port -> self port} asDictionary.
	wsServer on: 'connection' do: [ : ws |
		ws instVarNamed:#serverConnection put: (LpServerConnection new ws: ws server: self)
	]