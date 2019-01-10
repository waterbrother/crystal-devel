require "ecr"

class Greeting
	def initialize(@name : String)
	end

	ECR.def_to_s "greeting.ecr"
end

puts Greeting.new("John").to_s
