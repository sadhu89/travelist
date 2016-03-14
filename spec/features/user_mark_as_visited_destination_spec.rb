require 'rails_helper'

feature 'User mark as visited destination' do 
  scenario 'successfully' do 
    visit root_path
    click_on 'Log in'
    fill_in 'user_email', with: 'example@example.com'
    fill_in 'user_password', with: 'password'
    click_on 
  end
end