feature 'check the test is working' do

  scenario "should show the welcome test" do
    visit '/'
    expect(page).to have_content "Hello World"
  end
end
