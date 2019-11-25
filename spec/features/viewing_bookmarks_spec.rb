feature 'can view the bookmarks' do
  scenario 'see the bookmark' do
    visit '/bookmarks'
    expect(page).to have_content "http://www.sqltutorial.org/sql-cheat-sheet/"
    expect(page).to have_content "https://blog.ganttpro.com/en/waterfall-vs-agile-with-advantages-and-disadvantages/"
  end
end
