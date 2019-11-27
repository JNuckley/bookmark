require 'pg'

feature 'can view the bookmarks' do

scenario 'see the bookmark' do
  # connection = PG.connect(dbname: 'bookmark_manager_test')

  # Add the test data - before create method was made
  # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
  # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
  # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
  Bookmark.create(url: "http://www.makersacademy.com")
  Bookmark.create(url: "http://www.destroyallsoftware.com")
  Bookmark.create(url: "http://www.google.com")

    visit '/bookmarks'

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"

  end
end
