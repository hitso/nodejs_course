http = require 'http'
user = require './user.coffee'

http.createServer (req, res) ->
  user.get "Wilson", (id) ->
    res.writeHead 200,
      'Content-Type': 'text/plain'

    res.end "Hello #{id}""
.listen 1338, '127.0.0.1'
