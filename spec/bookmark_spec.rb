require 'bookmark'
require 'database_helpers'

describe '.all' do
  it 'returns all bookmarks' do
    #  connects to the test database
    connection = PG.connect(dbname: 'bookmark_manager_test')


    # adding the test URL's to the test database using SQL commands
    #  it connects > inserts into table bookmarks > url column > URL entry
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    #  this is defining bookmarks as all of the bookmarks as coded in the model
    bookmarks = Bookmark.all

    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
    expect(bookmarks).to include("http://www.google.com")
  end
end

describe '.create' do
  it 'creates a new bookmark' do
    #  this is using the model layer .create method to add a URL
    Bookmark.create(url: 'http://www.testbookmark.com')
    expect(Bookmark.all).to include 'http://www.testbookmark.com'
  end
end
