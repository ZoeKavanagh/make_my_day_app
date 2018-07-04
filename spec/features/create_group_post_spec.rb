require 'rails_helper'

RSpec.feature 'Creating a post in a group', type: :feature do

  scenario 'User creates a post' do
    visit '/'
    create_group
    fill_in 'post_content', with: 'Test message'
    click_button 'Send Message'
    expect(page).to have_content('Test message')
  end
end
