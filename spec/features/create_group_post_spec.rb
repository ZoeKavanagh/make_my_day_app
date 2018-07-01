require 'rails_helper'
# OmniAuth.config.test_mode = true


RSpec.feature 'Creating a post in a group', type: :feature do

  scenario 'User creates a post' do
    visit '/'
    click_link 'Sign in with Google'
    click_link 'Make Our Day'
    fill_in 'group_name', with: 'The Group'
    click_button 'Create Group'
    fill_in 'post_content', with: 'Test message'
    click_button 'Send Message'
    expect(page).to have_content('Test message')
  end
end
