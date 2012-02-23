window.WEB_SOCKET_SWF_LOCATION = "/public/vendor/socket.io/WebSocketMain.swf"
window.SocketMpd = class _ extends window.Mpd
  constructor: (socket) ->
    super()
    @socket = socket
    @socket.on 'FromMpd', (data) =>
      @receive data
    @socket.on 'connect', @handleConnectionStart

  rawSend: (msg) =>
    @socket.emit 'ToMpd', msg
