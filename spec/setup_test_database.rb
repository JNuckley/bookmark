require 'pg'

def setup_test_database

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

# Clear the bookmarks table
connection.exec("TRUNCATE bookmarks;")

end

#   this file connects to the test database and clears the content.
#   it is called in the spec_helper to run before every test
