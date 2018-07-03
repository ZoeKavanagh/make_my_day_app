require 'rails_helper'
require 'helpers/create_day_helper'

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
    create_group
    expect(page).to have_content('The Group')
  end

  scenario 'User can add other users to group' do
    FactoryBot.create(:user, name: 'Beatrice Jerkins')
    visit '/'
    create_group
    expect(page).to have_content('MyString')
  end

  scenario 'User can select a date' do
    FactoryBot.create(:user, name: 'Beatrice Jerkins')
    visit '/'
    create_group
    expect(page).to have_button('Make Our Day')
  end

  scenario 'User can view activities for specified day' do
    FactoryBot.create(:user, name: 'Beatrice Jerkins')
    visit '/'
    create_group
    complete_form
    expect(page).to have_content('Swingers')
  end
end
