sleep 10

require "rubygems"
require "bundler"

Bundler.require

set :bind, "0.0.0.0"
set :port, ENV.fetch("PORT", 8080)
set :environment, "production"

get "/" do
  "hello!"
end

get "/health" do
  status :ok
end

get "/liveness" do
  status :ok
end

get "/startup" do
  status :ok
end
