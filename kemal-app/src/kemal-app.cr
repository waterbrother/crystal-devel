require "kemal"

get "/" do
  render "src/views/index.ecr", "src/views/main.ecr"
end

get "/index" do
  render "src/views/index.ecr", "src/views/main.ecr"
end

get "/about" do
  render "src/views/about.ecr", "src/views/main.ecr"
end

Kemal.run
