require 'rails_helper'

RSpec.feature 'Creating new group', type: :feature do
  scenario 'User creates new group' do
    visit '/'
    click_link 'Create New Group'
    expect(page).to have_current_path(new_group_path)
  end
end
