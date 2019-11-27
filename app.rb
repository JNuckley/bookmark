require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks/new' do
  erb :"bookmarks/new"
end
  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmarks.all
  end

  post '/bookmarks' do
  Bookmark.create(url: params['url'])
  redirect '/bookmarks'
end

  # post '/bookmarks' do
  #   p ENV
  #   @bookmarks = Bookmark.all
  #   erb :'bookmarks/index'
  # end

  run! if app_file == $0
end
