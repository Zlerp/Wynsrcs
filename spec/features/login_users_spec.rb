require 'rails_helper'

RSpec.feature "LoginUsers", type: :feature do
  before(:each) do
    visit root_path
  end

  # scenario 'successfully' do
  #   fill_in 'Username', with: 'a'
  #   fill_in 'Password', with: 'a'
  #   click_button 'Log In'
  #
  #   expect(page).to have_content('HI HELLO')
  # end

  scenario 'without filling in username and password' do
    click_button('Log In')

    expect(page).to have_content("Log In")
    expect(page).to_not have_content('HI HELLO a')
  end
end
