feature 'check the test is working' do

  scenario "should show the welcome test" do
    visit '/bookmarks'
    #  this part below has been altered since the first test stage to look for the actual entries - might need removing
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
