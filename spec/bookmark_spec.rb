require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.sqltutorial.org/sql-cheat-sheet/")
      expect(bookmarks).to include("https://blog.ganttpro.com/en/waterfall-vs-agile-with-advantages-and-disadvantages/")
    end
  end
end
