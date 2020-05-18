require 'webrick'

server=WEBrick::HTTPServer.new(:Port => ARGV.first)
server.mount_proc '/' do |req, res|
put req.body
end

trap 'INT' do
server.shutdown
end
server.start

