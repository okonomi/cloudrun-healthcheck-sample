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
