feature 'can view the bookmarks' do
  scenario 'see the bookmark' do
    visit '/bookmarks'
    expect(page).to have_content "I'm a bookmark"
  end
end
