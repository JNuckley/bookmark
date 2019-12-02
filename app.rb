require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks/new' do
  erb :"bookmarks/new"
end

  post 'bookmarks/new' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
#  by making all bookmarks an instance variable, it can be called in the view files.
#  is this needed?
  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmarks.all
  end

  #  second bookmarks controller for the post
  #  this called the create method and assigns url to the input parameters
  #  and redirects back to the form
  post '/bookmarks' do
  Bookmark.create(url: params['url'])
  redirect '/bookmarks'
end

  run! if app_file == $0
end
