require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergies path', {:type => :feature}) do
  it('displays the allergies of the user based on a given score') do
    visit('/')
    fill_in('score', :with => 10)
    click_button("Check Allergies")
    expect(page).to have_content('You are allergic to peanuts and strawberries.')
  end
end
