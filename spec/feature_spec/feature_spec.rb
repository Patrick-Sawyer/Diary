require 'capybara'

feature 'homepage' do 
  scenario 'loads up homepage with data' do 
    visit('/')
    expect(page).to have_content "WELCOME TO MY DIARY"
  end
end
