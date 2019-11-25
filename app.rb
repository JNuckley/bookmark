require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = [
            "http://www.sqltutorial.org/sql-cheat-sheet/",
            "https://blog.ganttpro.com/en/waterfall-vs-agile-with-advantages-and-disadvantages/"
           ]

  erb :'bookmarks/index'
end

  run! if app_file == $0
end
