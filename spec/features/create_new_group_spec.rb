require 'rails_helper'

RSpec.feature 'Creating new group', type: :feature do
  scenario 'User clicks create new group button' do
    visit '/'
    click_link 'Make Our Day'
    expect(page).to have_current_path(new_group_path)
  end

  scenario 'Displays a list of all users' do
    FactoryBot.create(:user)
    visit '/'
    click_link 'Make Our Day'
    expect(page).to have_content('MyString')
  end

  scenario 'User can enter group name' do
    visit '/'
    click_link 'Make Our Day'
    fill_in 'group_name', with: 'The Group'
    click_button 'Create Group'
    expect(page).to have_content('The Group')
  end

  scenario 'User can add other users to group' do
    FactoryBot.create(:user, name: 'Beatrice Jerkins')
    visit '/'
    click_link 'Make Our Day'
    fill_in 'group_name', with: 'The Group'
    page.check('group_user_ids_1')
    click_button 'Create Group'
    expect(page).to have_content('MyString')
  end
end
