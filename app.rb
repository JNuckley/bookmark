require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end

  run! if app_file == $0
end
