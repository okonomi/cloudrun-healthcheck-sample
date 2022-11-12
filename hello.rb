require "rubygems"
require "bundler"

Bundler.require

require_relative "lib/boot_delay"


use BootDelay

set :bind, "0.0.0.0"
set :port, ENV.fetch("PORT", 8080)
set :environment, "production"

get "/" do
  "hello!"
end

get "/health" do
  status :ok
end
