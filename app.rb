# app.rb
require "sinatra"

set :port, 3000
set :environment, :production

class Server < Sinatra::Base
  get "/" do
    "Hello Docker World"
  end
end
