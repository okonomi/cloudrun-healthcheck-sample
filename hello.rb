sleep 10

require "rubygems"
require "bundler"

Bundler.require

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
