require 'webrick'
include WEBrick

server = HTTPServer.new(:Port => 4568,:DocumentRoot => './')

trap('INT') {
  server.shutdown
}

server.start