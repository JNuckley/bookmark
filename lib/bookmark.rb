require 'pg'

class Bookmark
=begin
self allows calling the class and method from the controller without making a
new instance everytime
=end
  def self.all
    #  if this is a test then it will connect to the test database as described in the spec_helper
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
=begin
defining result as the response from selecting all from the bookmarks table
once connected and then mapping the bookmarks to the word bookmark with the url
=end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map {|bookmark| bookmark['url']}
  end

  def self.create(url:)
  if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'bookmark_manager_test')
  else
    connection = PG.connect(dbname: 'bookmark_manager')
  end
=begin
connected to the database, insert into the bookmarks table, url column,
the url parameters from the table in the .erb. This is an SQL command.
=end
  connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
end

end
