require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    "I'm a bookmark"
  end

  run! if app_file == $0
end
