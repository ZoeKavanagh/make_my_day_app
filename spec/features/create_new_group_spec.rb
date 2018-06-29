require 'rails_helper'

RSpec.feature 'Creating new group', type: :feature do
  scenario 'User clicks create new group button' do
    visit '/'
    click_link 'Create New Group'
    expect(page).to have_current_path(new_group_path)
  end

  scenario 'Displays a list of all users' do
    FactoryBot.create(:user)
    visit '/'
    click_link 'Create New Group'
    expect(page).to have_content('MyString')
  end

  # scenario 'User can enter group name' do
  #   visit '/'
  #   click_link 'Create New Group'
  #   fill_in 'Group Name', with: 'The Group'
  #
  # end
end
