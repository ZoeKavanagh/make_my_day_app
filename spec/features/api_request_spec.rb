require 'rails_helper'

RSpec.feature 'API request', type: :feature do

  scenario 'User selects date 2018-07-01' do
    visit '/'
    fill_in "date", with: '2018-07-01'
    click_button 'Make your day'
    expect(page).to have_content('Teapot painting')
  end
end
