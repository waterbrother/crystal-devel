require "http/server"
require "ecr"

class Hello
	def initialize(@time : String)
	end

	ECR.def_to_s "include/main.ecr"
end

tn = Time.now.to_s

server = HTTP::Server.new do |context|
	context.response.content_type = "text/html"
	context.response.print Hello.new(tn).to_s
end

address = server.bind_tcp 8080
puts "listening on http://#{address}"
server.listen
